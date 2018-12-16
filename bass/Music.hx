package bass;

@:noDebug
@:unreflective
extern abstract Music(Int) from Int{
	public static inline var BASS_MUSIC_FLOAT		= Sample.BASS_SAMPLE_FLOAT;
	public static inline var BASS_MUSIC_MONO		= Sample.BASS_SAMPLE_MONO;
	public static inline var BASS_MUSIC_LOOP		= Sample.BASS_SAMPLE_LOOP;
	public static inline var BASS_MUSIC_3D			= Sample.BASS_SAMPLE_3D;
	public static inline var BASS_MUSIC_FX			= Sample.BASS_SAMPLE_FX;
	public static inline var BASS_MUSIC_AUTOFREE	= Stream.BASS_STREAM_AUTOFREE;
	public static inline var BASS_MUSIC_DECODE		= Stream.BASS_STREAM_DECODE;
	public static inline var BASS_MUSIC_PRESCAN	    = Stream.BASS_STREAM_PRESCAN;	// calculate playback length
	public static inline var BASS_MUSIC_CALCLEN	    = BASS_MUSIC_PRESCAN;
	public static inline var BASS_MUSIC_RAMP		= 0x200;	// normal ramping
	public static inline var BASS_MUSIC_RAMPS		= 0x400;	// sensitive ramping
	public static inline var BASS_MUSIC_SURROUND	= 0x800;	// surround sound
	public static inline var BASS_MUSIC_SURROUND2	= 0x1000;	// surround sound (mode 2)
	public static inline var BASS_MUSIC_FT2PAN		= 0x2000;	// apply FastTracker 2 panning to XM files
	public static inline var BASS_MUSIC_FT2MOD		= 0x2000;	// play .MOD as FastTracker 2 does
	public static inline var BASS_MUSIC_PT1MOD		= 0x4000;	// play .MOD as ProTracker 1 does
	public static inline var BASS_MUSIC_NONINTER	= 0x10000;	// non-interpolated sample mixing
	public static inline var BASS_MUSIC_SINCINTER	= 0x800000; // sinc interpolated sample mixing
	public static inline var BASS_MUSIC_POSRESET	= 0x8000;	// stop all notes when moving position
	public static inline var BASS_MUSIC_POSRESETEX	= 0x400000; // stop all notes and reset bmp/etc when moving position
	public static inline var BASS_MUSIC_STOPBACK	= 0x80000;	// stop the music on a backwards jump effect
	public static inline var BASS_MUSIC_NOSAMPLE	= 0x100000; // don't load the samples

    public var isValid(get, never):Bool;
    inline function get_isValid():Bool{
        return this!=0;
    }
    public inline function new(handle:Int){
        this = handle;
    }
    
    @:to public inline function toChannel():Channel{
		return new Channel(this);
	} 
}