package bass;

@:enum
abstract BassConfig(Int) from Int{
    // BASS_SetConfig options
    inline var BASS_CONFIG_BUFFER		        = 0;
    inline var BASS_CONFIG_UPDATEPERIOD	        = 1;
    inline var BASS_CONFIG_GVOL_SAMPLE	        = 4;
    inline var BASS_CONFIG_GVOL_STREAM	        = 5;
    inline var BASS_CONFIG_GVOL_MUSIC	        = 6;
    inline var BASS_CONFIG_CURVE_VOL	        = 7;
    inline var BASS_CONFIG_CURVE_PAN	        = 8;
    inline var BASS_CONFIG_FLOATDSP		        = 9;
    inline var BASS_CONFIG_3DALGORITHM	        = 10;
    inline var BASS_CONFIG_NET_TIMEOUT	        = 11;
    inline var BASS_CONFIG_NET_BUFFER	        = 12;
    inline var BASS_CONFIG_PAUSE_NOPLAY	        = 13;
    inline var BASS_CONFIG_NET_PREBUF	        = 15;
    inline var BASS_CONFIG_NET_PASSIVE	        = 18;
    inline var BASS_CONFIG_REC_BUFFER	        = 19;
    inline var BASS_CONFIG_NET_PLAYLIST	        = 21;
    inline var BASS_CONFIG_MUSIC_VIRTUAL        = 22;
    inline var BASS_CONFIG_VERIFY		        = 23;
    inline var BASS_CONFIG_UPDATETHREADS        = 24;
    inline var BASS_CONFIG_DEV_BUFFER	        = 27;
    inline var BASS_CONFIG_VISTA_TRUEPOS        = 30;
    inline var BASS_CONFIG_IOS_MIXAUDIO	        = 34;
    inline var BASS_CONFIG_DEV_DEFAULT	        = 36;
    inline var BASS_CONFIG_NET_READTIMEOUT      = 37;
    inline var BASS_CONFIG_VISTA_SPEAKERS       = 38;
    inline var BASS_CONFIG_IOS_SPEAKER	        = 39;
    inline var BASS_CONFIG_MF_DISABLE	        = 40;
    inline var BASS_CONFIG_HANDLES		        = 41;
    inline var BASS_CONFIG_UNICODE		        = 42;
    inline var BASS_CONFIG_SRC			        = 43;
    inline var BASS_CONFIG_SRC_SAMPLE	        = 44;
    inline var BASS_CONFIG_ASYNCFILE_BUFFER     = 45;
    inline var BASS_CONFIG_OGG_PRESCAN		    = 47;
    inline var BASS_CONFIG_MF_VIDEO		        = 48;
    inline var BASS_CONFIG_AIRPLAY		        = 49;
    inline var BASS_CONFIG_DEV_NONSTOP	        = 50;
    inline var BASS_CONFIG_IOS_NOCATEGORY       = 51;
    inline var BASS_CONFIG_VERIFY_NET	        = 52;
    inline var BASS_CONFIG_DEV_PERIOD	        = 53;
    inline var BASS_CONFIG_FLOAT			    = 54;
    inline var BASS_CONFIG_NET_SEEK		        = 56;
    inline var BASS_CONFIG_AM_DISABLE			= 58;
    inline var BASS_CONFIG_NET_PLAYLIST_DEPTH	= 59;
    inline var BASS_CONFIG_NET_PREBUF_WAIT		= 60;
}