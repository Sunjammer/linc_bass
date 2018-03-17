//hxcpp include should be first
#include <hxcpp.h>
#include "./linc_bass.h"

namespace linc {

    namespace bass {

        int test() {
            return 55;
        }

        int getNumDevices(){
            int a, count=0;
            BASS_DEVICEINFO info;
            for (a=1; BASS_GetDeviceInfo(a, &info); a++){
                if (info.flags & BASS_DEVICE_ENABLED) // device is enabled
                    count++; // count it*/
            }
            return count;
        }

        extern bool getDeviceInfo(int index, Array<String> nameAndDriver, int* flags){
            BASS_DEVICEINFO info;
            if(BASS_GetDeviceInfo(index, &info)){
                nameAndDriver[0] = ::String(info.name);
                nameAndDriver[1] = ::String(info.driver);
                *flags = info.flags;
                return true;
            }
            return false;
        }

    } //bass

} //linc