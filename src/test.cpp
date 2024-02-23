#include <stdio.h>
#include <iostream>
#include <stdlib.h>
#include <stdint.h>
#include <sys/time.h>

#include <ftd2xx.h>
#include <libmpsse_i2c.h>


int main(){
    FT_STATUS ftStatus;
    FT_HANDLE ftHandle;
    DWORD numDevs;
    DWORD devIndex = 0;
    DWORD pdwVID;
    DWORD pdwPID;
    int deviceNumber = 10;
    char Buffer[64];
    char *BufPtrs[3];
    char Buffer1[64];
    char Buffer2[64];
    long locIdBuf[16];

    ftStatus = FT_GetVIDPID(&pdwVID, &pdwPID);
    if(ftStatus != FT_OK){
        std::cout << "************************************************\n";
        std::cout << "FT_STATUS NOT OK GetVIDPID not working\n";
        std::cout << "************************************************\n";
        return 0;
    }
    
    std::cout << "************************************************\n";
    std::cout << "VID = " << pdwVID << '\n';
    std::cout << "PID = " << pdwPID << '\n';
    std::cout << "************************************************\n";


    ftStatus = FT_Open(deviceNumber, &ftHandle);
    if(ftStatus != FT_OK){
        std::cout << "************************************************\n";
        std::cout << "FT_STATUS NOT OK Cannot open\n";
        std::cout << "************************************************\n";
        return 0;
    }

    std::cout << "************************************************\n";
    std::cout << "FT_STATUS OK Opened\n";
    std::cout << "************************************************\n";


    ftStatus = FT_ListDevices(&numDevs, NULL, FT_LIST_NUMBER_ONLY);
    if(ftStatus != FT_OK){
        std::cout << "************************************************\n";
        std::cout << "FT_STATUS NOT OK Get the number of devices currently connected\n";
        std::cout << "************************************************\n";
        return 0;
    }

    std::cout << "************************************************\n";
    std::cout << "FT_STATUS OK Get the number of devices currently connected\n";
    std::cout << "numDevs = " << numDevs << '\n';
    std::cout << "************************************************\n";


    ftStatus = FT_ListDevices((PVOID)devIndex, Buffer, FT_LIST_BY_INDEX|FT_OPEN_BY_SERIAL_NUMBER);
    if(ftStatus != FT_OK){
        std::cout << "************************************************\n";
        std::cout << "FT_STATUS NOT OK Get serial number of first device\n";
        std::cout << "************************************************\n";
        return 0;
    }

    std::cout << "************************************************\n";
    std::cout << "FT_STATUS OK Get serial number of first device\n";
    std::cout << "devIndex = " << devIndex << '\n';
    std::cout << "Buffer = ";
    for(int i = 0; i < (sizeof(Buffer)/sizeof(char)); i++){
        std::cout << Buffer[i];
    }
    std::cout << '\n';
    std::cout << "************************************************\n";


    BufPtrs[0] = Buffer1;
    BufPtrs[1] = Buffer2;
    BufPtrs[2] = NULL;

    ftStatus = FT_ListDevices(BufPtrs, &numDevs, FT_LIST_ALL|FT_OPEN_BY_DESCRIPTION);

    if (ftStatus != FT_OK){
        std::cout << "************************************************\n";
        std::cout << "FT_STATUS NOT OK Get device descriptions of all devices currently connected\n";
        std::cout << "************************************************\n";
        return 0;
    }

    std::cout << "************************************************\n";
    std::cout << "FT_STATUS OK Get device descriptions of all devices currently connected\n";
    std::cout << "numDevs = " << numDevs << '\n';
    std::cout << "Buffer 1 = ";
    for(int i = 0; i < (sizeof(Buffer1)/sizeof(char)); i++){
        std::cout << Buffer1[i];
    }
    std::cout << '\n';
    std::cout << "Buffer 2 = ";
    for(int i = 0; i < (sizeof(Buffer2)/sizeof(char)); i++){
        std::cout << Buffer2[i];
    }
    std::cout << '\n';
    std::cout << "************************************************\n";

    ftStatus = FT_ListDevices(locIdBuf, &numDevs, FT_LIST_ALL|FT_OPEN_BY_LOCATION);
    if (ftStatus != FT_OK){
        std::cout << "************************************************\n";
        std::cout << "FT_STATUS NOT OK Get locations of all devices currently connected\n";
        std::cout << "************************************************\n";
        return 0;
    }

    std::cout << "************************************************\n";
    std::cout << "FT_STATUS OK Get device descriptions of all devices currently connected\n";
    std::cout << "numDevs = " << numDevs << '\n';
    std::cout << "locIdBuf = ";
    for(int i = 0; i < (sizeof(locIdBuf)/sizeof(char)); i++){
        std::cout << locIdBuf[i];
    }
    std::cout << '\n';
    std::cout << "************************************************\n";

    ftStatus = FT_Close(&ftHandle);
    if(ftStatus != FT_OK){
        std::cout << "************************************************\n";
        std::cout << "FT_STATUS NOT OK Cannot close\n";
        std::cout << "************************************************\n";
        return 0;
    }

    std::cout << "************************************************\n";
    std::cout << "FT_STATUS OK Closed\n";
    std::cout << "************************************************\n";

    return 1;
}