package bass;

@:allow(bass.Bass)
class SampleInfo{
    public var freq:Int;
    public var flags:Int;
    public var length:Int;
    public var max:Int;
    public var origres:Int;
    public var chans:Int;
    public var mingap:Int;
    public var mode3d:Int;
    public var iangle:Int;
    public var oangle:Int;
    public var vam:Int;
    public var priority:Int;
    public var outvol:Float;
    public var mindist:Float;
    public var maxdist:Float;
    public var volume:Float;
    public var pan:Float;

    //TODO: Wrap everything around these two instead of copying fields
    var ints:Array<Int>;
    var floats:Array<Float>;
    public inline function new(ints:Array<Int>, floats:Array<Float>){
        this.ints = ints;
        this.floats = floats;
        this.freq       = ints[0];
        this.flags      = ints[1];
        this.length     = ints[2];
        this.max        = ints[3];
        this.origres    = ints[4];
        this.chans      = ints[5];
        this.mingap     = ints[6];
        this.mode3d     = ints[7];
        this.iangle     = ints[8];
        this.oangle     = ints[9];
        this.vam        = ints[10];
        this.priority   = ints[11];
        this.outvol     = floats[0];
        this.mindist    = floats[1];
        this.maxdist    = floats[2];
        this.volume     = floats[3];
        this.pan        = floats[4];
    }
}

abstract Sample(Int) from Int {
	public static inline var BASS_SAMPLE_8BITS		= 1;	// 8 bit
	public static inline var BASS_SAMPLE_FLOAT		= 256;	// 32 bit floating-point
	public static inline var BASS_SAMPLE_MONO		= 2;	// mono
	public static inline var BASS_SAMPLE_LOOP		= 4;	// looped
	public static inline var BASS_SAMPLE_3D		    = 8;	// 3D functionality
	public static inline var BASS_SAMPLE_SOFTWARE	= 16;	// not using hardware mixing
	public static inline var BASS_SAMPLE_MUTEMAX	= 32;	// mute at max distance (3D only)
	public static inline var BASS_SAMPLE_VAM		= 64;	// DX7 voice allocation & management
	public static inline var BASS_SAMPLE_FX		    = 128;	// old implementation of DX8 effects
	public static inline var BASS_SAMPLE_OVER_VOL	= 0x10000;	// override lowest volume
	public static inline var BASS_SAMPLE_OVER_POS	= 0x20000;	// override longest playing
	public static inline var BASS_SAMPLE_OVER_DIST	= 0x30000; // override furthest from listener (3D only)

    public var isValid(get, never):Bool;
    inline function get_isValid():Bool{
        return this!=0;
    }
    public inline function new(handle:Int){
        this = handle;
    }
}