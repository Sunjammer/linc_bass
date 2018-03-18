package bass;

/** BASS_Init flags **/
@:enum
abstract BassInit(Int){
    /** 8 bit **/
    inline var BASS_DEVICE_8BITS	    = 1;		
    /** mono **/
    inline var BASS_DEVICE_MONO	        = 2;
    /** enable 3D functionality **/
    inline var BASS_DEVICE_3D	        = 4;
    /** limit output to 16 bit **/	
    inline var BASS_DEVICE_16BITS       = 8;
    /** calculate device latency (BASS_INFO struct) **/
    inline var BASS_DEVICE_LATENCY	    = 0x100;
    /** detect speakers via Windows control panel **/	
    inline var BASS_DEVICE_CPSPEAKERS   = 0x400;
    /** force enabling of speaker assignment **/
    inline var BASS_DEVICE_SPEAKERS     = 0x800;
    /** ignore speaker arrangement **/
    inline var BASS_DEVICE_NOSPEAKER    = 0x1000;
    /** use ALSA "dmix" plugin **/
    inline var BASS_DEVICE_DMIX	        = 0x2000;
    /** set device sample rate **/
    inline var BASS_DEVICE_FREQ	        = 0x4000;
    /** limit output to stereo **/
    inline var BASS_DEVICE_STEREO       = 0x8000;
    /** hog/exclusive mode **/
    inline var BASS_DEVICE_HOG	        = 0x10000;
    /** use AudioTrack output **/
    inline var BASS_DEVICE_AUDIOTRACK   = 0x20000;
    /** use DirectSound output **/
    inline var BASS_DEVICE_DSOUND	    = 0x40000;
}