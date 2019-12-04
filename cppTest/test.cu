#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

__global__ void mykernal(int n, float *x, float *y){
	// if(blockIdx.x == 0)
	//	printf("-Block %d\n", blockIdx.x);
	//printf("-    Block: %d  ||  Thread: %d\n", blockIdx.x, threadIdx.x);
	int index = blockIdx.x * blockDim.x + threadIdx.x;
	int stride = blockDim.x * gridDim.x;
	for (int i = index; i < n; i += stride)
		y[i] = x[i] + y[i];
}

int main(void)
{
	int N = 1<<20;

	float *x, *y;

	// Allocate Unified Memory – accessible from CPU or GPU
	cudaMallocManaged(&x, N*sizeof(float));
	cudaMallocManaged(&y, N*sizeof(float));

	// initialize x and y arrays on the host
	for (int i = 0; i < N; i++) {
		x[i] = 1.0f;
		y[i] = 2.0f;
	}

	int blockSize = 256;
	int numBlocks = (N + blockSize - 1) / blockSize;
	mykernal<<<numBlocks, blockSize>>>(N, x, y);

	// std::cout<<"Hello World!"<<std::endl;
	// Wait for GPU to finish before accessing on host
	cudaDeviceSynchronize();

	// Check for errors (all values should be 3.0f)
	float maxError = 0.0f;
	for (int i = 0; i < N; i++)
		maxError = fmax(maxError, fabs(y[i]-3.0f));
	std::cout << "Max error: " << maxError << std::endl;

	// Free memory
	cudaFree(x);
	cudaFree(y);

	return 0;
}
