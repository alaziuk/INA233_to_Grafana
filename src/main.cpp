#include <iostream>
#include <adder.h>
#include <INA233.h>

int main(){
    std::cout << "Henlo\n";
    INA233 test(1, 0x34);

    std::cout << add(1.2f, 2.3f) << '\n';
}
