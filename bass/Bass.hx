package bass;

typedef HWND = cpp.Pointer<cpp.Void>;
typedef CLSID = Int;
typedef DWORD = Int;

@:keep
@:include('linc_bass.h')
#if !display
@:build(linc.Linc.touch())
@:build(linc.Linc.xml('bass'))
#end
extern class Bass {

	// BASS_SetConfigPtr options
	static inline var BASS_CONFIG_NET_AGENT	=	16;
	static inline var BASS_CONFIG_NET_PROXY	=	17;
	static inline var BASS_CONFIG_IOS_NOTIFY=		46;

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

	static inline var BASS_MP3_IGNOREDELAY   = 0x200; // ignore LAME/Xing/VBRI/iTunes delay & padding info
	static inline var BASS_MP3_SETPOS		= Stream.BASS_STREAM_PRESCAN;

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

	// Init and config

	/** Get CPU use as a percentage **/
	@:native("BASS_GetCPU")
	static function getCPU():Float;

	@:native("BASS_GetConfig")
	static function getConfig(option:Int):Int;

	@:native("BASS_SetConfig")
	static function setConfig(option:Int, value:Int):Bool;

	/** Get the audio device used by the calling thread **/
	@:native("BASS_GetDevice")
	static function getDevice():Int;

	@:native('linc::bass::getNumDevices')
	static function getNumDevices() : Int;

	@:native("BASS_Free")
	static function free():Bool;

	@:native("BASS_ErrorGetCode")
	static function errorGetCode():BassError;

	static inline function init(device:Int, freq:Int, flags:Int, #if !mac hwnd:HWND #else hwnd:Int #end, clsid:CLSID):Bool
	{
		#if !mac
			untyped __cpp__("HWND w = (HWND)(void*){0};", hwnd);
			return untyped __cpp__("BASS_Init({0},{1},{2},w,{3})", device, freq, flags, clsid);
		#else
			return untyped __cpp__("BASS_Init({0},{1},{2},{3},{4})", device, freq, flags, hwnd, clsid);
		#end
	}

	@:native("BASS_Start")
	static function start():Bool;

	@:native("BASS_Stop")
	static function stop():Bool;

	@:native("BASS_Pause")
	static function pause():Bool;

	static inline function checkError():Bool{
		var error = errorGetCode();
        if(error != BassError.BASS_OK){
            trace("There was an error");
			return false;
        }
		return true;
	}

	static inline function getDeviceInfo(index:Int):Null<DeviceInfo>{
		force_include();
		var nameAndDriver:Array<String> = [];
		var flags = 0;
		var success = untyped __cpp__("linc::bass::getDeviceInfo({0}, {1}, &{2})", index, nameAndDriver, flags);
		if(!success) return null;
		return new DeviceInfo(
			nameAndDriver[0],
			nameAndDriver[1],
			flags
		);
	}

	static inline function getInfo():Null<BassInfo>{
		force_include();
		var args:Array<Int> = [];
		var success = untyped __cpp__("linc::bass::getInfo({0})", args);
		if(!success) return null;
		return new BassInfo(args);
	}

	// Samples

	@:native("BASS_SampleGetChannel")
	static function sampleGetChannel(sample:Sample, onlyNew:Bool = false):Channel;

	static inline function sampleGetChannels(sample:Sample):Array<Channel>{
		force_include();
		var out:Array<Channel> = [];
		untyped __cpp__("linc::bass::sampleGetChannels({0}, {1})", sample, out);
		return out;
	}

	inline static function sampleGetData(sample:Sample, out:haxe.io.BytesData):Bool{
		force_include();
		return untyped __cpp__("BASS_SampleGetData({0}, (void*)&({1}[0]))", sample, out);
	}

	inline static function sampleSetData(sample:Sample, data:haxe.io.BytesData):Bool{
		force_include();
		return untyped __cpp__("BASS_SampleSetData({0}, (void*)&({1}[0]))", sample, data);
	}

	@:native("BASS_SampleFree")
	static function sampleFree(sample:Sample):Bool;

	@:native("BASS_SampleCreate")
	static function sampleCreate(length:Int, freq:Int, chans:Int, max:Int, flags:Int):Sample;

	@:native("BASS_SampleStop")
	static function sampleStop(sample:Sample):Bool;

	static inline function sampleGetInfo(sample:Sample):Sample.SampleInfo{
		force_include();
		var floats:Array<Float> = [];
		var ints:Array<Int> = [];
		untyped __cpp__("linc::bass::sampleGetInfo({0}, {1}, {2})", sample, ints, floats);
		return new Sample.SampleInfo(ints, floats);
	}
	static inline function sampleSetInfo(sample:Sample, info:Sample.SampleInfo):Bool{
		force_include();
		return untyped __cpp__("linc::bass::sampleSetInfo({0}, {1}, {2})", sample, info.ints, info.floats);
	}

	static inline function sampleLoadPath(path:String, offset:Int, length:Int, max:Int, flags:Int):Sample{
		force_include();
		return untyped __cpp__("BASS_SampleLoad(false, (const void*)({0}.__s), {1}, {2}, {3}, {4})", path, offset, length, max, flags);
	}

	static inline function sampleLoadData(bytes:haxe.io.BytesData, offset:Int, length:Int, max:Int, flags:Int):Sample{
		force_include();
		return untyped __cpp__("BASS_SampleLoad(true, (const int*)&{0}[0], {1}, {2}, {3}, {4})", bytes, offset, length, max, flags);
	}

	static inline function sampleLoad(source:DataSource, offset:Int, length:Int, max:Int, flags:Int):Sample{
		switch(source){
			case File(path):
				return sampleLoadPath(path, offset, length, max, flags);
			case Memory(data):
				return sampleLoadData(data, offset, length, max, flags);
		}
	}

	// Music

	

	static inline function musicLoadPath(path:String, offset:Int, length:Int, flags:Int, freq:Int):Music{
		force_include();
		return untyped __cpp__("BASS_MusicLoad(false, (const void*)({0}.__s), {1}, {2}, {3}, {4})", path, offset, length, flags, freq);
	}

	static inline function musicLoadData(bytes:haxe.io.BytesData, offset:Int, length:Int, flags:Int, freq:Int):Music{
		force_include();
		return untyped __cpp__("BASS_MusicLoad(true, (const int*)&{0}[0], {1}, {2}, {3}, {4})", bytes, offset, length, flags, freq);
	}

	static inline function musicLoad(source:DataSource, offset:Int, length:Int, flags:Int, freq:Int):Music{
		switch(source){
			case File(path):
				return musicLoadPath(path, offset, length, flags, freq);
			case Memory(data):
				return musicLoadData(data, offset, length, flags, freq);
		}
	}

	@:native("BASS_MusicFree")
	static function musicFree(handle:Music):Bool;

	// Streams

	@:native("BASS_StreamCreate")
	static function streamCreate(freq:Int, chans:Int, flags:Int, proc:Dynamic, user:Int):Stream; //TODO: Proc, user
	

	static inline function streamCreateFile(path:String, offset:Int, length:Int, flags:Int):Stream{
		force_include();
		return untyped __cpp__("BASS_StreamCreateFile(false, (const void*)({0}.__s), {1}, {2}, {3})", path, offset, length, flags);
	}

	static inline function streamCreateData(bytes:haxe.io.BytesData, offset:Int, length:Int, flags:Int):Stream{
		force_include();
		return untyped __cpp__("BASS_StreamCreateFile(true, (const WCHAR*)&{0}[0], {1}, {2}, {3})", bytes, offset, length, flags);
	}

	static inline function streamCreateURL(url:String, offset:Int, flags:Int, proc:Dynamic, user:Int):Stream{
		force_include();
		return untyped __cpp__("BASS_StreamCreateURL({0}.__s, {1}, {2}, {3}, {4})", url, offset, flags, proc, user); //TODO: Proc, user
	}

	@:native("BASS_StreamFree")
	static function streamFree(handle:Stream):Bool;

	@:native("BASS_StreamGetFilePosition")
	static function streamGetFilePosition(handle:Stream, mode:Int):Int;

	// Channels
	
	@:native("BASS_ChannelPlay")
	static function channelPlay(channel:Channel, restart:Bool = false):Bool;

	@:native("BASS_ChannelStop")
	static function channelStop(channel:Channel):Bool;

	@:native("BASS_ChannelPause")
	static function channelPause(channel:Channel):Bool;
	
	@:native("BASS_ChannelFlags")
	static function channelFlags(channel:Channel, flags:Int, mask:Int):Int;

	@:native("BASS_ChannelIsActive")
	static function channelIsActive(channel:Channel):Bool;

	@:native("BASS_ChannelIsSliding")
	static function channelIsSliding(channel:Channel, attrib:Int):Bool;

	@:native("BASS_ChannelLock")
	static function channelLock(channel:Channel, lock:Bool):Bool;

	@:native("BASS_ChannelBytes2Seconds")
	static function channelBytes2Seconds(channel:Channel, pos:Int):Float;

	@:native("BASS_ChannelSeconds2Bytes")
	static function channelSeconds2Bytes(channel:Channel, pos:Float):Int;

	@:native("BASS_ChannelGetDevice")
	static function channelGetDevice(channel:Channel):Int;

	@:native("BASS_ChannelGetLength")
	static function channelGetLength(channel:Channel, mode:Int):Int;

	@:native("BASS_ChannelGetLevel")
	static function channelGetLevel(channel:Channel):Int;

	@:native("BASS_ChannelGetPosition")
	static function channelGetPosition(channel:Channel, mode:Int):Int;

	@:native("BASS_ChannelSetDevice")
	static function channelSetDevice(channel:Channel, device:Int):Bool;
	
	@:native("BASS_ChannelSetLink")
	static function channelSetLink(a:Channel, b:Channel):Bool;

	@:native("BASS_ChannelSetPosition")
	static function channelSetPosition(channel:Channel, pos:Int, mode:Int):Bool;

	@:native("BASS_ChannelSlideAttribute")
	static function channelSlideAttribute(channel:Channel, attrib:Int, value:Float, time:Int):Bool;

	
	@:native("void") 
	public static function force_include():Void{ };

} //bass

