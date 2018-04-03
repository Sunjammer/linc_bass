package bass;

abstract Stream(Int) from Int {

	public static inline var BASS_STREAM_PRESCAN	= 0x20000; // enable pin-point seeking/length (MP3/MP2/MP1)
	public static inline var BASS_STREAM_AUTOFREE   = 0x40000;	// automatically free the stream when it stop/ends
	public static inline var BASS_STREAM_RESTRATE   = 0x80000;	// restrict the download rate of internet file streams
	public static inline var BASS_STREAM_BLOCK		= 0x100000; // download/play internet file stream in small blocks
	public static inline var BASS_STREAM_DECODE	    = 0x200000; // don't play the stream, only decode (BASS_ChannelGetData)
	public static inline var BASS_STREAM_STATUS	    = 0x800000; // give server status info (HTTP/ICY tags) in DOWNLOADPROC

    public inline function new(handle:Int){
        this = handle;
    }

    public var isValid(get, never):Bool;
    inline function get_isValid():Bool{
        return this!=0;
    }

    @:to public inline function toChannel() return new Channel(this);
}