#include <iostream>

// void PrintMat(int *a){
//    std::cout << " a: " << *a[0][0] << std::endl;
//    std::cout << "dref: " << a  << std::endl;
// }

int main(void){
    int N = 1<<10;
    int a[N*N];
    for(int i = 0; i < N; i++){    
        for(int j = 0; j < N; j++){
            a[i*N + j] = i*N + j;
        }
    }

    for(int i = 0; i < N; i++){    
        for(int j = 0; j < N; j++){
            std::cout << " " <<a[i*N + j] << " ";
        }
        std::cout << std::endl; 
    }
    // int a[2][2] = {{1, 2}, {3, 4}};
    // PrintMat(&a);
    return 0;
}
