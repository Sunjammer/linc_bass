#pragma once

#include <hxcpp.h>
#include "../lib/bass.h"
#include "../lib/bass_fx.h"

namespace linc {

    namespace bass {

        extern int test();
        extern int getNumDevices();
        extern bool getDeviceInfo(int index, Array<String> nameAndDriver, int* flags);
        extern bool getInfo(Array<int> out);
        extern bool sampleGetInfo(int sample, Array<int> ints, Array<float> floats);
        extern bool sampleSetInfo(int sample, Array<int> ints, Array<float> floats);
        extern int sampleGetChannels(int sample, Array<int> channels);

    } //empty namespace

} //linc