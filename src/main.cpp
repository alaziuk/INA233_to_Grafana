#include <iostream>
#include <INA233.h>

#define I2C_ADRESS 4

int main(){
    std::cout << "Henlo\n";
    INA233 ina233(I2C_ADRESS, 0x40);
    ina233.calibrate(0.008, 6.88);
    std::cout << "Prad: " << ina233.getCurrent_mA() << '\n';
}
