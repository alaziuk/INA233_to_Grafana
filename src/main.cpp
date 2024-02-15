#include <iostream>
#include <INA233.h>

int main(){
    std::cout << "Henlo\n";
    INA233 ina233(1, 0x40);
}
