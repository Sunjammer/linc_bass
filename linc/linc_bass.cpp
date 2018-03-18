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

        extern bool sampleGetInfo(int sample, Array<int> ints, Array<float> floats){
            BASS_SAMPLE info;
            if(BASS_SampleGetInfo(sample, &info)){
                ints[0]     = info.freq;
                ints[1]     = info.flags;
                ints[2]     = info.length;
                ints[3]     = info.max;
                ints[4]     = info.origres;
                ints[5]     = info.chans;
                ints[6]     = info.mingap;
                ints[7]     = info.mode3d;
                ints[8]     = info.iangle;
                ints[9]     = info.oangle;
                ints[10]    = info.vam;
                ints[11]    = info.priority;
                floats[0]   = info.outvol;
                floats[1]   = info.mindist;
                floats[2]   = info.maxdist;
                floats[3]   = info.volume;
                floats[4]   = info.pan;
                return true;
            }
            return false;
        }

        extern bool sampleSetInfo(int sample, Array<int> ints, Array<float> floats){
            BASS_SAMPLE info;
            info.freq       = ints[0];
            info.flags      = ints[1];
            info.length     = ints[2];
            info.max        = ints[3];
            info.origres    = ints[4];
            info.chans      = ints[5];
            info.mingap     = ints[6];
            info.mode3d     = ints[7];
            info.iangle     = ints[8];
            info.oangle     = ints[9];
            info.vam        = ints[10];
            info.priority   = ints[11];

            info.outvol     = floats[0];
            info.mindist    = floats[1];
            info.maxdist    = floats[2];
            info.volume     = floats[3];
            info.pan        = floats[4];
            return BASS_SampleSetInfo(sample, &info);
        }

        extern bool getInfo(Array<int> out){
            BASS_INFO info;
            if(BASS_GetInfo(&info)){
                out[0] = info.flags;
                out[1] = info.hwsize;
                out[2] = info.hwfree;
                out[3] = info.freesam;
                out[4] = info.free3d;
                out[5] = info.minrate;
                out[6] = info.maxrate;
                out[7] = info.eax;
                out[8] = info.minbuf;
                out[9] = info.dsver;
                out[10] = info.latency;
                out[11] = info.initflags;
                out[12] = info.speakers;
                out[13] = info.freq;
                return true;
            }
            return false;
        }

    } //bass

} //linc