#include <iostream>
#include <complex>

int main(){
    const double pi = std::acos(-1);
    std::cout << pi << std::endl;
    const std::complex<double> i(0, 1);
    std::cout << "e^(pi*i) = " << std::exp(i * pi) << std::endl;
}
