package bass;

typedef HWND = Int;
typedef CLSID = Int;

@:keep
@:include('linc_bass.h')
#if !display
@:build(linc.Linc.touch())
@:build(linc.Linc.xml('bass'))
#end
extern class Bass {


// Error codes returned by BASS_ErrorGetCode

// BASS_SetConfig options
static inline var BASS_CONFIG_BUFFER		= 0;
static inline var BASS_CONFIG_UPDATEPERIOD	= 1;
static inline var BASS_CONFIG_GVOL_SAMPLE	= 4;
static inline var BASS_CONFIG_GVOL_STREAM	= 5;
static inline var BASS_CONFIG_GVOL_MUSIC	= 6;
static inline var BASS_CONFIG_CURVE_VOL		= 7;
static inline var BASS_CONFIG_CURVE_PAN		= 8;
static inline var BASS_CONFIG_FLOATDSP		= 9;
static inline var BASS_CONFIG_3DALGORITHM	= 10;
static inline var BASS_CONFIG_NET_TIMEOUT	= 11;
static inline var BASS_CONFIG_NET_BUFFER	= 12;
static inline var BASS_CONFIG_PAUSE_NOPLAY	= 13;
static inline var BASS_CONFIG_NET_PREBUF	= 15;
static inline var BASS_CONFIG_NET_PASSIVE	= 18;
static inline var BASS_CONFIG_REC_BUFFER	= 19;
static inline var BASS_CONFIG_NET_PLAYLIST	= 21;
static inline var BASS_CONFIG_MUSIC_VIRTUAL	= 22;
static inline var BASS_CONFIG_VERIFY		= 23;
static inline var BASS_CONFIG_UPDATETHREADS	= 24;
static inline var BASS_CONFIG_DEV_BUFFER	= 27;
static inline var BASS_CONFIG_VISTA_TRUEPOS	= 30;
static inline var BASS_CONFIG_IOS_MIXAUDIO	= 34;
static inline var BASS_CONFIG_DEV_DEFAULT	= 36;
static inline var BASS_CONFIG_NET_READTIMEOUT= 37;
static inline var BASS_CONFIG_VISTA_SPEAKERS= 38;
static inline var BASS_CONFIG_IOS_SPEAKER	= 39;
static inline var BASS_CONFIG_MF_DISABLE	= 40;
static inline var BASS_CONFIG_HANDLES		= 41;
static inline var BASS_CONFIG_UNICODE		= 42;
static inline var BASS_CONFIG_SRC			= 43;
static inline var BASS_CONFIG_SRC_SAMPLE	= 44;
static inline var BASS_CONFIG_ASYNCFILE_BUFFER =45;
static inline var BASS_CONFIG_OGG_PRESCAN		=47;
static inline var BASS_CONFIG_MF_VIDEO		= 48;
static inline var BASS_CONFIG_AIRPLAY		= 49;
static inline var BASS_CONFIG_DEV_NONSTOP	= 50;
static inline var BASS_CONFIG_IOS_NOCATEGORY= 51;
static inline var BASS_CONFIG_VERIFY_NET	= 52;
static inline var BASS_CONFIG_DEV_PERIOD	= 53;
static inline var BASS_CONFIG_FLOAT			= 54;
static inline var BASS_CONFIG_NET_SEEK		= 56;
static inline var BASS_CONFIG_AM_DISABLE			= 58;
static inline var BASS_CONFIG_NET_PLAYLIST_DEPTH	= 59;
static inline var BASS_CONFIG_NET_PREBUF_WAIT		= 60;

// BASS_SetConfigPtr options
static inline var BASS_CONFIG_NET_AGENT	=	16;
static inline var BASS_CONFIG_NET_PROXY	=	17;
static inline var BASS_CONFIG_IOS_NOTIFY=		46;

// BASS_Init flags
static inline var BASS_DEVICE_8BITS	=	1;		// 8 bit
static inline var BASS_DEVICE_MONO	=	2;		// mono
static inline var BASS_DEVICE_3D	=		4;		// enable 3D functionality
static inline var BASS_DEVICE_16BITS=		8;		// limit output to 16 bit
static inline var BASS_DEVICE_LATENCY	=	0x100;	// calculate device latency (BASS_INFO struct)
static inline var BASS_DEVICE_CPSPEAKERS=	0x400;	// detect speakers via Windows control panel
static inline var BASS_DEVICE_SPEAKERS=	0x800;	// force enabling of speaker assignment
static inline var BASS_DEVICE_NOSPEAKER=	0x1000;	// ignore speaker arrangement
static inline var BASS_DEVICE_DMIX	=	0x2000;	// use ALSA "dmix" plugin
static inline var BASS_DEVICE_FREQ	=	0x4000;	// set device sample rate
static inline var BASS_DEVICE_STEREO=		0x8000;	// limit output to stereo
static inline var BASS_DEVICE_HOG	=		0x10000;	// hog/exclusive mode
static inline var BASS_DEVICE_AUDIOTRACK=	0x20000;	// use AudioTrack output
static inline var BASS_DEVICE_DSOUND	=	0x40000;	// use DirectSound output

// DirectSound interfaces (for use with BASS_GetDSoundObject)
static inline var BASS_OBJECT_DS	=	1;	// IDirectSound
static inline var BASS_OBJECT_DS3DL	=2;	// IDirectSound3DListener

	// BASS_DEVICEINFO flags
	static inline var BASS_DEVICE_ENABLED			= 1;                                                                                                                  
	static inline var BASS_DEVICE_DEFAULT			= 2;
	static inline var BASS_DEVICE_INIT				= 4;
	static inline var BASS_DEVICE_LOOPBACK  		= 8;

	static inline var BASS_DEVICE_TYPE_MASK			= 0xff000000;
	static inline var BASS_DEVICE_TYPE_NETWORK		= 0x01000000;
	static inline var BASS_DEVICE_TYPE_SPEAKERS		= 0x02000000;
	static inline var BASS_DEVICE_TYPE_LINE			= 0x03000000;
	static inline var BASS_DEVICE_TYPE_HEADPHONES	= 0x04000000;
	static inline var BASS_DEVICE_TYPE_MICROPHONE	= 0x05000000;
	static inline var BASS_DEVICE_TYPE_HEADSET		= 0x06000000;
	static inline var BASS_DEVICE_TYPE_HANDSET		= 0x07000000;
	static inline var BASS_DEVICE_TYPE_DIGITAL		= 0x08000000;
	static inline var BASS_DEVICE_TYPE_SPDIF		= 0x09000000;
	static inline var BASS_DEVICE_TYPE_HDMI			= 0x0a000000;
	static inline var BASS_DEVICE_TYPE_DISPLAYPORT  = 0x40000000;

	// BASS_GetDeviceInfo flags
	static inline var BASS_DEVICES_AIRPLAY		= 0x1000000;

	// BASS_INFO flags (from DSOUND.H)
	static inline var DSCAPS_CONTINUOUSRATE		= 0x00000010;	// supports all sample rates between min/maxrate
	static inline var DSCAPS_EMULDRIVER			= 0x00000020;	// device does NOT have hardware DirectSound support
	static inline var DSCAPS_CERTIFIED			= 0x00000040;	// device driver has been certified by Microsoft
	static inline var DSCAPS_SECONDARYMONO		= 0x00000100;	// mono
	static inline var DSCAPS_SECONDARYSTEREO 	= 0x00000200;	// stereo
	static inline var DSCAPS_SECONDARY8BIT		= 0x00000400;	// 8 bit
	static inline var DSCAPS_SECONDARY16BIT		= 0x00000800;	// 16 bit


	// BASS_RECORDINFO flags (from DSOUND.H)
	static inline var DSCCAPS_EMULDRIVER 	= DSCAPS_EMULDRIVER;	// device does NOT have hardware DirectSound recording support
	static inline var DSCCAPS_CERTIFIED		= DSCAPS_CERTIFIED;		// device driver has been certified by Microsoft


	static inline var WAVE_FORMAT_1M08  	= 0x00000001;       /* 11.025 kHz, Mono,   8-bit  */
	static inline var WAVE_FORMAT_1S08  	= 0x00000002;       /* 11.025 kHz, Stereo, 8-bit  */
	static inline var WAVE_FORMAT_1M16  	= 0x00000004;       /* 11.025 kHz, Mono,   16-bit */
	static inline var WAVE_FORMAT_1S16  	= 0x00000008;       /* 11.025 kHz, Stereo, 16-bit */
	static inline var WAVE_FORMAT_2M08  	= 0x00000010;       /* 22.05  kHz, Mono,   8-bit  */
	static inline var WAVE_FORMAT_2S08  	= 0x00000020;       /* 22.05  kHz, Stereo, 8-bit  */
	static inline var WAVE_FORMAT_2M16  	= 0x00000040;       /* 22.05  kHz, Mono,   16-bit */
	static inline var WAVE_FORMAT_2S16  	= 0x00000080;       /* 22.05  kHz, Stereo, 16-bit */
	static inline var WAVE_FORMAT_4M08  	= 0x00000100;       /* 44.1   kHz, Mono,   8-bit  */
	static inline var WAVE_FORMAT_4S08  	= 0x00000200;       /* 44.1   kHz, Stereo, 8-bit  */
	static inline var WAVE_FORMAT_4M16  	= 0x00000400;       /* 44.1   kHz, Mono,   16-bit */
	static inline var WAVE_FORMAT_4S16 		= 0x00000800;       /* 44.1   kHz, Stereo, 16-bit */

	static inline var BASS_SAMPLE_8BITS		= 1;	// 8 bit
	static inline var BASS_SAMPLE_FLOAT		= 256;	// 32 bit floating-point
	static inline var BASS_SAMPLE_MONO		= 2;	// mono
	static inline var BASS_SAMPLE_LOOP		= 4;	// looped
	static inline var BASS_SAMPLE_3D		= 8;	// 3D functionality
	static inline var BASS_SAMPLE_SOFTWARE	= 16;	// not using hardware mixing
	static inline var BASS_SAMPLE_MUTEMAX	= 32;	// mute at max distance (3D only)
	static inline var BASS_SAMPLE_VAM		= 64;	// DX7 voice allocation & management
	static inline var BASS_SAMPLE_FX		= 128;	// old implementation of DX8 effects
	static inline var BASS_SAMPLE_OVER_VOL	= 0x10000;	// override lowest volume
	static inline var BASS_SAMPLE_OVER_POS	= 0x20000;	// override longest playing
	static inline var BASS_SAMPLE_OVER_DIST	= 0x30000; // override furthest from listener (3D only)

	static inline var BASS_STREAM_PRESCAN	= 0x20000; // enable pin-point seeking/length (MP3/MP2/MP1)
	static inline var BASS_STREAM_AUTOFREE  = 0x40000;	// automatically free the stream when it stop/ends
	static inline var BASS_STREAM_RESTRATE  = 0x80000;	// restrict the download rate of internet file streams
	static inline var BASS_STREAM_BLOCK		= 0x100000; // download/play internet file stream in small blocks
	static inline var BASS_STREAM_DECODE	= 0x200000; // don't play the stream, only decode (BASS_ChannelGetData)
	static inline var BASS_STREAM_STATUS	= 0x800000; // give server status info (HTTP/ICY tags) in DOWNLOADPROC

	static inline var BASS_MP3_IGNOREDELAY  = 0x200; // ignore LAME/Xing/VBRI/iTunes delay & padding info
	static inline var BASS_MP3_SETPOS		= BASS_STREAM_PRESCAN;

	static inline var BASS_MUSIC_FLOAT		= BASS_SAMPLE_FLOAT;
	static inline var BASS_MUSIC_MONO		= BASS_SAMPLE_MONO;
	static inline var BASS_MUSIC_LOOP		= BASS_SAMPLE_LOOP;
	static inline var BASS_MUSIC_3D			= BASS_SAMPLE_3D;
	static inline var BASS_MUSIC_FX			= BASS_SAMPLE_FX;
	static inline var BASS_MUSIC_AUTOFREE	= BASS_STREAM_AUTOFREE;
	static inline var BASS_MUSIC_DECODE		= BASS_STREAM_DECODE;
	static inline var BASS_MUSIC_PRESCAN	= BASS_STREAM_PRESCAN;	// calculate playback length
	static inline var BASS_MUSIC_CALCLEN	= BASS_MUSIC_PRESCAN;
	static inline var BASS_MUSIC_RAMP		= 0x200;	// normal ramping
	static inline var BASS_MUSIC_RAMPS		= 0x400;	// sensitive ramping
	static inline var BASS_MUSIC_SURROUND	= 0x800;	// surround sound
	static inline var BASS_MUSIC_SURROUND2	= 0x1000;	// surround sound (mode 2)
	static inline var BASS_MUSIC_FT2PAN		= 0x2000;	// apply FastTracker 2 panning to XM files
	static inline var BASS_MUSIC_FT2MOD		= 0x2000;	// play .MOD as FastTracker 2 does
	static inline var BASS_MUSIC_PT1MOD		= 0x4000;	// play .MOD as ProTracker 1 does
	static inline var BASS_MUSIC_NONINTER	= 0x10000;	// non-interpolated sample mixing
	static inline var BASS_MUSIC_SINCINTER	= 0x800000; // sinc interpolated sample mixing
	static inline var BASS_MUSIC_POSRESET	= 0x8000;	// stop all notes when moving position
	static inline var BASS_MUSIC_POSRESETEX	= 0x400000; // stop all notes and reset bmp/etc when moving position
	static inline var BASS_MUSIC_STOPBACK	= 0x80000;	// stop the music on a backwards jump effect
	static inline var BASS_MUSIC_NOSAMPLE	= 0x100000; // don't load the samples

	// Speaker assignment flags
	static inline function BASS_SPEAKER_N(n:Int):Int { return ((n)<<24); } // n'th pair of speakers (max 15)

	static inline var BASS_SPEAKER_FRONT	    = 0x1000000;	// front speakers
	static inline var BASS_SPEAKER_REAR	        = 0x2000000;	// rear/side speakers
	static inline var BASS_SPEAKER_CENLFE	    = 0x3000000;	// center & LFE speakers (5.1)
	static inline var BASS_SPEAKER_REAR2	    = 0x4000000;	// rear center speakers (7.1)
	static inline var BASS_SPEAKER_LEFT	        = 0x10000000;	// modifier: left
	static inline var BASS_SPEAKER_RIGHT	    = 0x20000000;	// modifier: right
	static inline var BASS_SPEAKER_FRONTLEFT	= BASS_SPEAKER_FRONT|BASS_SPEAKER_LEFT;
	static inline var BASS_SPEAKER_FRONTRIGHT	= BASS_SPEAKER_FRONT|BASS_SPEAKER_RIGHT;
	static inline var BASS_SPEAKER_REARLEFT	    = BASS_SPEAKER_REAR|BASS_SPEAKER_LEFT;
	static inline var BASS_SPEAKER_REARRIGHT	= BASS_SPEAKER_REAR|BASS_SPEAKER_RIGHT;
	static inline var BASS_SPEAKER_CENTER		= BASS_SPEAKER_CENLFE|BASS_SPEAKER_LEFT;
	static inline var BASS_SPEAKER_LFE		    = BASS_SPEAKER_CENLFE|BASS_SPEAKER_RIGHT;
	static inline var BASS_SPEAKER_REAR2LEFT	= BASS_SPEAKER_REAR2|BASS_SPEAKER_LEFT;
	static inline var BASS_SPEAKER_REAR2RIGHT	= BASS_SPEAKER_REAR2|BASS_SPEAKER_RIGHT;

	static inline var BASS_ASYNCFILE			= 0x40000000;
	static inline var BASS_UNICODE				= 0x80000000;

	static inline var BASS_RECORD_PAUSE			= 0x8000;	// start recording paused
	static inline var BASS_RECORD_ECHOCANCEL	= 0x2000;
	static inline var BASS_RECORD_AGC			= 0x4000;

	// DX7 voice allocation & management flags
	static inline var BASS_VAM_HARDWARE 	= 1;
	static inline var BASS_VAM_SOFTWARE 	= 2;
	static inline var BASS_VAM_TERM_TIME 	= 4;
	static inline var BASS_VAM_TERM_DIST 	= 8;
	static inline var BASS_VAM_TERM_PRIO 	= 16;

	static inline var BASS_ORIGRES_FLOAT 	= 0x10000;

	// BASS_CHANNELINFO types
	static inline var BASS_CTYPE_SAMPLE = 1;
	static inline var BASS_CTYPE_RECORD = 2;
	static inline var BASS_CTYPE_STREAM = 0x10000;
	static inline var BASS_CTYPE_STREAM_OGG = 0x10002;
	static inline var BASS_CTYPE_STREAM_MP1 = 0x10003;
	static inline var BASS_CTYPE_STREAM_MP2 = 0x10004;
	static inline var BASS_CTYPE_STREAM_MP3 = 0x10005;
	static inline var BASS_CTYPE_STREAM_AIFF = 0x10006;
	static inline var BASS_CTYPE_STREAM_CA = 0x10007;
	static inline var BASS_CTYPE_STREAM_MF = 0x10008;
	static inline var BASS_CTYPE_STREAM_AM = 0x10009;
	static inline var BASS_CTYPE_STREAM_DUMMY = 0x18000;
	static inline var BASS_CTYPE_STREAM_DEVICE = 0x18001;
	static inline var BASS_CTYPE_STREAM_WAV = 0x40000; // WAVE flag, LOWORD=codec
	static inline var BASS_CTYPE_STREAM_WAV_PCM = 0x50001;
	static inline var BASS_CTYPE_STREAM_WAV_FLOAT = 0x50003;
	static inline var BASS_CTYPE_MUSIC_MOD = 0x20000;
	static inline var BASS_CTYPE_MUSIC_MTM = 0x20001;
	static inline var BASS_CTYPE_MUSIC_S3M = 0x20002;
	static inline var BASS_CTYPE_MUSIC_XM = 0x20003;
	static inline var BASS_CTYPE_MUSIC_IT = 0x20004;
	static inline var BASS_CTYPE_MUSIC_MO3 = 0x00100; // MO3 flag

	// 3D channel modes
	static inline var BASS_3DMODE_NORMAL 	= 0;	// normal 3D processing
	static inline var BASS_3DMODE_RELATIVE 	= 1;	// position is relative to the listener
	static inline var BASS_3DMODE_OFF 		= 2;	// no 3D processing

	// software 3D mixing algorithms (used with BASS_CONFIG_3DALGORITHM)
	static inline var BASS_3DALG_DEFAULT 	= 0;
	static inline var BASS_3DALG_OFF 		= 1;
	static inline var BASS_3DALG_FULL 		= 2;
	static inline var BASS_3DALG_LIGHT 		= 3;

	//TODO: Enum abstract 


	static inline var BASS_STREAMPROC_END	= 0x80000000;	// end of user stream flag

	// special STREAMPROCs
	static inline var STREAMPROC_DUMMY		=/*(STREAMPROC*)*/0;		    // "dummy" stream
	static inline var STREAMPROC_PUSH		=/*(STREAMPROC*)*/-1;		// push stream
	static inline var STREAMPROC_DEVICE		=/*(STREAMPROC*)*/-2;		// device mix stream

	// BASS_StreamCreateFileUser file systems
	static inline var STREAMFILE_NOBUFFER		= 0;
	static inline var STREAMFILE_BUFFER		    = 1;
	static inline var STREAMFILE_BUFFERPUSH	    = 2;

	static inline var BASS_FILEDATA_END		= 0;	// end & close the file

	// BASS_StreamGetFilePosition modes
	static inline var BASS_FILEPOS_CURRENT	    = 0;
	static inline var BASS_FILEPOS_DECODE		= BASS_FILEPOS_CURRENT;
	static inline var BASS_FILEPOS_DOWNLOAD	    = 1;
	static inline var BASS_FILEPOS_END		    = 2;
	static inline var BASS_FILEPOS_START		= 3;
	static inline var BASS_FILEPOS_CONNECTED	= 4;
	static inline var BASS_FILEPOS_BUFFER		= 5;
	static inline var BASS_FILEPOS_SOCKET		= 6;
	static inline var BASS_FILEPOS_ASYNCBUF	    = 7;
	static inline var BASS_FILEPOS_SIZE		    = 8;
	static inline var BASS_FILEPOS_BUFFERING	= 9;

	// BASS_ChannelSetSync types
	static inline var BASS_SYNC_POS			= 0;
	static inline var BASS_SYNC_END			= 2;
	static inline var BASS_SYNC_META		= 4;
	static inline var BASS_SYNC_SLIDE		= 5;
	static inline var BASS_SYNC_STALL		= 6;
	static inline var BASS_SYNC_DOWNLOAD	= 7;
	static inline var BASS_SYNC_FREE		= 8;
	static inline var BASS_SYNC_SETPOS		= 11;
	static inline var BASS_SYNC_MUSICPOS	= 10;
	static inline var BASS_SYNC_MUSICINST	= 1;
	static inline var BASS_SYNC_MUSICFX		= 3;
	static inline var BASS_SYNC_OGG_CHANGE	= 12;
	static inline var BASS_SYNC_MIXTIME		= 0x40000000;	// flag: sync at mixtime, else at playtime
	static inline var BASS_SYNC_ONETIME		= 0x80000000;	// flag: sync only once, else continuously

	// BASS_ChannelIsActive return values
	static inline var BASS_ACTIVE_STOPPED	= 0;
	static inline var BASS_ACTIVE_PLAYING	= 1;
	static inline var BASS_ACTIVE_STALLED	= 2;
	static inline var BASS_ACTIVE_PAUSED	= 3;

	// Channel attributes
	static inline var BASS_ATTRIB_FREQ			    = 1;
	static inline var BASS_ATTRIB_VOL				= 2;
	static inline var BASS_ATTRIB_PAN				= 3;
	static inline var BASS_ATTRIB_EAXMIX			= 4;
	static inline var BASS_ATTRIB_NOBUFFER		    = 5;
	static inline var BASS_ATTRIB_VBR				= 6;
	static inline var BASS_ATTRIB_CPU				= 7;
	static inline var BASS_ATTRIB_SRC				= 8;
	static inline var BASS_ATTRIB_NET_RESUME		= 9;
	static inline var BASS_ATTRIB_SCANINFO		    = 10;
	static inline var BASS_ATTRIB_NORAMP			= 11;
	static inline var BASS_ATTRIB_BITRATE			= 12;
	static inline var BASS_ATTRIB_BUFFER			= 13;
	static inline var BASS_ATTRIB_MUSIC_AMPLIFY	    = 0x100;
	static inline var BASS_ATTRIB_MUSIC_PANSEP	    = 0x101;
	static inline var BASS_ATTRIB_MUSIC_PSCALER	    = 0x102;
	static inline var BASS_ATTRIB_MUSIC_BPM		    = 0x103;
	static inline var BASS_ATTRIB_MUSIC_SPEED		= 0x104;
	static inline var BASS_ATTRIB_MUSIC_VOL_GLOBAL  = 0x105;
	static inline var BASS_ATTRIB_MUSIC_ACTIVE	    = 0x106;
	static inline var BASS_ATTRIB_MUSIC_VOL_CHAN	= 0x200; // + channel #
	static inline var BASS_ATTRIB_MUSIC_VOL_INST	= 0x300; // + instrument #

	// BASS_ChannelSlideAttribute flags
	static inline var BASS_SLIDE_LOG			= 0x1000000;

	// BASS_ChannelGetData flags
	static inline var BASS_DATA_AVAILABLE	    = 0;			// query how much data is buffered
	static inline var BASS_DATA_FIXED		    = 0x20000000;	// flag: return 8.24 fixed-point data
	static inline var BASS_DATA_FLOAT		    = 0x40000000;	// flag: return floating-point sample data
	static inline var BASS_DATA_FFT256	        = 0x80000000;	// 256 sample FFT
	static inline var BASS_DATA_FFT512	        = 0x80000001;	// 512 FFT
	static inline var BASS_DATA_FFT1024	        = 0x80000002;	// 1024 FFT
	static inline var BASS_DATA_FFT2048	        = 0x80000003;	// 2048 FFT
	static inline var BASS_DATA_FFT4096	        = 0x80000004;	// 4096 FFT
	static inline var BASS_DATA_FFT8192	        = 0x80000005;	// 8192 FFT
	static inline var BASS_DATA_FFT16384	    = 0x80000006;	// 16384 FFT
	static inline var BASS_DATA_FFT32768	    = 0x80000007;	// 32768 FFT
	static inline var BASS_DATA_FFT_INDIVIDUAL  = 0x10;	// FFT flag: FFT for each channel, else all combined
	static inline var BASS_DATA_FFT_NOWINDOW	= 0x20;	// FFT flag: no Hanning window
	static inline var BASS_DATA_FFT_REMOVEDC	= 0x40;	// FFT flag: pre-remove DC bias
	static inline var BASS_DATA_FFT_COMPLEX	    = 0x80;	// FFT flag: return complex data

	// BASS_ChannelGetLevelEx flags
	static inline var BASS_LEVEL_MONO		   = 1;
	static inline var BASS_LEVEL_STEREO	       = 2;
	static inline var BASS_LEVEL_RMS		   = 4;
	static inline var BASS_LEVEL_VOLPAN	       = 8;

	// BASS_ChannelGetTags types : what's returned
	static inline var BASS_TAG_ID3		        = 0;	        // ID3v1 tags : TAG_ID3 structure
	static inline var BASS_TAG_ID3V2		    = 1;	        // ID3v2 tags : variable length block
	static inline var BASS_TAG_OGG		        = 2;	        // OGG comments : series of null-terminated UTF-8 strings
	static inline var BASS_TAG_HTTP		        = 3;	        // HTTP headers : series of null-terminated ANSI strings
	static inline var BASS_TAG_ICY		        = 4;	        // ICY headers : series of null-terminated ANSI strings
	static inline var BASS_TAG_META		        = 5;	        // ICY metadata : ANSI string
	static inline var BASS_TAG_APE		        = 6;	        // APE tags : series of null-terminated UTF-8 strings
	static inline var BASS_TAG_MP4 		        = 7;	        // MP4/iTunes metadata : series of null-terminated UTF-8 strings
	static inline var BASS_TAG_WMA		        = 8;	        // WMA tags : series of null-terminated UTF-8 strings
	static inline var BASS_TAG_VENDOR		    = 9;	        // OGG encoder : UTF-8 string
	static inline var BASS_TAG_LYRICS3	        = 10;	    // Lyric3v2 tag : ASCII string
	static inline var BASS_TAG_CA_CODEC	        = 11;	    // CoreAudio codec info : TAG_CA_CODEC structure
	static inline var BASS_TAG_MF			    = 13;	    // Media Foundation tags : series of null-terminated UTF-8 strings
	static inline var BASS_TAG_WAVEFORMAT	    = 14;	    // WAVE format : WAVEFORMATEEX structure
	static inline var BASS_TAG_AM_MIME	        = 15;	    // Android Media MIME type : ASCII string
	static inline var BASS_TAG_AM_NAME	        = 16;	    // Android Media codec name : ASCII string
	static inline var BASS_TAG_RIFF_INFO	    = 0x100;     // RIFF "INFO" tags : series of null-terminated ANSI strings
	static inline var BASS_TAG_RIFF_BEXT	    = 0x101;     // RIFF/BWF "bext" tags : TAG_BEXT structure
	static inline var BASS_TAG_RIFF_CART	    = 0x102;     // RIFF/BWF "cart" tags : TAG_CART structure
	static inline var BASS_TAG_RIFF_DISP	    = 0x103;     // RIFF "DISP" text tag : ANSI string
	static inline var BASS_TAG_RIFF_CUE	        = 0x104;     // RIFF "cue " chunk : TAG_CUE structure
	static inline var BASS_TAG_RIFF_SMPL	    = 0x105;     // RIFF "smpl" chunk : TAG_SMPL structure
	static inline var BASS_TAG_APE_BINARY	    = 0x1000;	// + index #, binary APE tag : TAG_APE_BINARY structure
	static inline var BASS_TAG_MUSIC_NAME		= 0x10000;	// MOD music name : ANSI string
	static inline var BASS_TAG_MUSIC_MESSAGE	= 0x10001;	// MOD message : ANSI string
	static inline var BASS_TAG_MUSIC_ORDERS	    = 0x10002;	// MOD order list : BYTE array of pattern numbers
	static inline var BASS_TAG_MUSIC_AUTH		= 0x10003;	// MOD author : UTF-8 string
	static inline var BASS_TAG_MUSIC_INST		= 0x10100;	// + instrument #, MOD instrument name : ANSI string
	static inline var BASS_TAG_MUSIC_SAMPLE	    = 0x10300;	// + sample #, MOD sample name : ANSI string

	// BASS_ChannelGetLength/GetPosition/SetPosition modes
	static inline var BASS_POS_BYTE			= 0;		// byte position
	static inline var BASS_POS_MUSIC_ORDER	= 1;		// order.row position, MAKELONG(order,row)
	static inline var BASS_POS_OGG			= 3;		// OGG bitstream number
	static inline var BASS_POS_RESET		= 0x2000000; // flag: reset user file buffers
	static inline var BASS_POS_RELATIVE		= 0x4000000; // flag: seek relative to the current position
	static inline var BASS_POS_INEXACT		= 0x8000000; // flag: allow seeking to inexact position
	static inline var BASS_POS_DECODE		= 0x10000000; // flag: get the decoding (not playing) position
	static inline var BASS_POS_DECODETO		= 0x20000000; // flag: decode to the position instead of seeking
	static inline var BASS_POS_SCAN			= 0x40000000; // flag: scan to the position

	// BASS_ChannelSetDevice/GetDevice option
	static inline var BASS_NODEVICE			            = 0x20000;

	// BASS_RecordSetInput flags
	static inline var BASS_INPUT_OFF		            = 0x10000;
	static inline var BASS_INPUT_ON		                = 0x20000;

	static inline var BASS_INPUT_TYPE_MASK		    = 0xff000000;
	static inline var BASS_INPUT_TYPE_UNDEF		    = 0x00000000;
	static inline var BASS_INPUT_TYPE_DIGITAL		= 0x01000000;
	static inline var BASS_INPUT_TYPE_LINE		    = 0x02000000;
	static inline var BASS_INPUT_TYPE_MIC			= 0x03000000;
	static inline var BASS_INPUT_TYPE_SYNTH		    = 0x04000000;
	static inline var BASS_INPUT_TYPE_CD			= 0x05000000;
	static inline var BASS_INPUT_TYPE_PHONE		    = 0x06000000;
	static inline var BASS_INPUT_TYPE_SPEAKER		= 0x07000000;
	static inline var BASS_INPUT_TYPE_WAVE		    = 0x08000000;
	static inline var BASS_INPUT_TYPE_AUX			= 0x09000000;
	static inline var BASS_INPUT_TYPE_ANALOG		= 0x0a000000;

	// BASS_ChannelSetFX effect types
	static inline var BASS_FX_DX8_CHORUS			= 0;
	static inline var BASS_FX_DX8_COMPRESSOR		= 1;
	static inline var BASS_FX_DX8_DISTORTION		= 2;
	static inline var BASS_FX_DX8_ECHO			    = 3;
	static inline var BASS_FX_DX8_FLANGER			= 4;
	static inline var BASS_FX_DX8_GARGLE			= 5;
	static inline var BASS_FX_DX8_I3DL2REVERB		= 6;
	static inline var BASS_FX_DX8_PARAMEQ			= 7;
	static inline var BASS_FX_DX8_REVERB			= 8;
	static inline var BASS_FX_VOLUME				= 9;
	static inline var BASS_DX8_PHASE_NEG_180        = 0;
	static inline var BASS_DX8_PHASE_NEG_90         = 1;
	static inline var BASS_DX8_PHASE_ZERO           = 2;
	static inline var BASS_DX8_PHASE_90             = 3;
	static inline var BASS_DX8_PHASE_180            = 4;
	static inline var BASS_IOSNOTIFY_INTERRUPT		= 1;	// interruption started
	static inline var BASS_IOSNOTIFY_INTERRUPT_END	= 2;	// interruption ended




	// Impls
	@:native('linc::bass::getNumDevices')
	static function getNumDevices() : Int;

	@:native("BASS_Free")
	static function free():Bool;

	@:native("BASS_ErrorGetCode")
	static function errorGetCode():BassError;

	@:native("BASS_Init")
	static function init(device:Int, freq:Int, flags:Int, hwnd:HWND, clsid:CLSID):Bool;

	static inline function getDeviceInfo(index:Int):Null<DeviceInfo>{
		var nameAndDriver:Array<String> = [];
		var flags = 0;
		var success = untyped __cpp__("linc::bass::getDeviceInfo({0}, {1}, &{2})", index, nameAndDriver, flags);
		if(!success) return null;
		return {
			name:nameAndDriver[0],
			driver:nameAndDriver[1],
			flags:flags
		}
	}

} //bass


enum EaxEnvironment
{
	EAX_ENVIRONMENT_GENERIC;
	EAX_ENVIRONMENT_PADDEDCELL;
	EAX_ENVIRONMENT_ROOM;
	EAX_ENVIRONMENT_BATHROOM;
	EAX_ENVIRONMENT_LIVINGROOM;
	EAX_ENVIRONMENT_STONEROOM;
	EAX_ENVIRONMENT_AUDITORIUM;
	EAX_ENVIRONMENT_CONCERTHALL;
	EAX_ENVIRONMENT_CAVE;
	EAX_ENVIRONMENT_ARENA;
	EAX_ENVIRONMENT_HANGAR;
	EAX_ENVIRONMENT_CARPETEDHALLWAY;
	EAX_ENVIRONMENT_HALLWAY;
	EAX_ENVIRONMENT_STONECORRIDOR;
	EAX_ENVIRONMENT_ALLEY;
	EAX_ENVIRONMENT_FOREST;
	EAX_ENVIRONMENT_CITY;
	EAX_ENVIRONMENT_MOUNTAINS;
	EAX_ENVIRONMENT_QUARRY;
	EAX_ENVIRONMENT_PLAIN;
	EAX_ENVIRONMENT_PARKINGLOT;
	EAX_ENVIRONMENT_SEWERPIPE;
	EAX_ENVIRONMENT_UNDERWATER;
	EAX_ENVIRONMENT_DRUGGED;
	EAX_ENVIRONMENT_DIZZY;
	EAX_ENVIRONMENT_PSYCHOTIC;
	EAX_ENVIRONMENT_COUNT;			// total number of environments
}

/*enum EAXPresets{
	EAX_PRESET_GENERIC         = EAX_ENVIRONMENT_GENERIC,0.5F,1.493F,0.5F
	EAX_PRESET_PADDEDCELL      = EAX_ENVIRONMENT_PADDEDCELL,0.25F,0.1F,0.0F
	EAX_PRESET_ROOM            = EAX_ENVIRONMENT_ROOM,0.417F,0.4F,0.666F
	EAX_PRESET_BATHROOM        = EAX_ENVIRONMENT_BATHROOM,0.653F,1.499F,0.166F
	EAX_PRESET_LIVINGROOM      = EAX_ENVIRONMENT_LIVINGROOM,0.208F,0.478F,0.0F
	EAX_PRESET_STONEROOM       = EAX_ENVIRONMENT_STONEROOM,0.5F,2.309F,0.888F
	EAX_PRESET_AUDITORIUM      = EAX_ENVIRONMENT_AUDITORIUM,0.403F,4.279F,0.5F
	EAX_PRESET_CONCERTHALL     = EAX_ENVIRONMENT_CONCERTHALL,0.5F,3.961F,0.5F
	EAX_PRESET_CAVE            = EAX_ENVIRONMENT_CAVE,0.5F,2.886F,1.304F
	EAX_PRESET_ARENA           = EAX_ENVIRONMENT_ARENA,0.361F,7.284F,0.332F
	EAX_PRESET_HANGAR          = EAX_ENVIRONMENT_HANGAR,0.5F,10.0F,0.3F
	EAX_PRESET_CARPETEDHALLWAY = EAX_ENVIRONMENT_CARPETEDHALLWAY,0.153F,0.259F,2.0F
	EAX_PRESET_HALLWAY         = EAX_ENVIRONMENT_HALLWAY,0.361F,1.493F,0.0F
	EAX_PRESET_STONECORRIDOR   = EAX_ENVIRONMENT_STONECORRIDOR,0.444F,2.697F,0.638F
	EAX_PRESET_ALLEY           = EAX_ENVIRONMENT_ALLEY,0.25F,1.752F,0.776F
	EAX_PRESET_FOREST          = EAX_ENVIRONMENT_FOREST,0.111F,3.145F,0.472F
	EAX_PRESET_CITY            = EAX_ENVIRONMENT_CITY,0.111F,2.767F,0.224F
	EAX_PRESET_MOUNTAINS       = EAX_ENVIRONMENT_MOUNTAINS,0.194F,7.841F,0.472F
	EAX_PRESET_QUARRY          = EAX_ENVIRONMENT_QUARRY,1.0F,1.499F,0.5F
	EAX_PRESET_PLAIN           = EAX_ENVIRONMENT_PLAIN,0.097F,2.767F,0.224F
	EAX_PRESET_PARKINGLOT      = EAX_ENVIRONMENT_PARKINGLOT,0.208F,1.652F,1.5F
	EAX_PRESET_SEWERPIPE       = EAX_ENVIRONMENT_SEWERPIPE,0.652F,2.886F,0.25F
	EAX_PRESET_UNDERWATER      = EAX_ENVIRONMENT_UNDERWATER,1.0F,1.499F,0.0F
	EAX_PRESET_DRUGGED         = EAX_ENVIRONMENT_DRUGGED,0.875F,8.392F,1.388F
	EAX_PRESET_DIZZY           = EAX_ENVIRONMENT_DIZZY,0.139F,17.234F,0.666F
	EAX_PRESET_PSYCHOTIC       = EAX_ENVIRONMENT_PSYCHOTIC,0.486F,7.563F,0.806F
}*/