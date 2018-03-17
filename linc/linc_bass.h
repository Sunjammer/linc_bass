#pragma once

//hxcpp include should always be first    
#include <hxcpp.h>
#include "../lib/bass.h"

//include other library includes as needed
// #include "../lib/____"

namespace linc {

    namespace bass {

        extern int test();
        extern int getNumDevices();
        extern bool getDeviceInfo(int index, Array<String> nameAndDriver, int* flags);


    } //empty namespace

} //linc