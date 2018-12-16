package bass;

import bass.Bass;

@:noDebug
@:unreflective
extern abstract BassInfo(Array<Int>){

    public var flags(get, never):DWORD;
    inline function get_flags():DWORD{
        return this[0];
    }

    public var hwsize(get, never):DWORD;
    inline function get_hwsize():DWORD{
        return this[1];
    }

    public var hwfree(get, never):DWORD;
    inline function get_hwfree():DWORD{
        return this[2];
    }

    public var freesam(get, never):DWORD;
    inline function get_freesam():DWORD{
        return this[3];
    }

    public var free3d(get, never):DWORD;
    inline function get_free3d():DWORD{
        return this[4];
    }

    public var minrate(get, never):DWORD;
    inline function get_minrate():DWORD{
        return this[5];
    }

    public var maxrate(get, never):DWORD;
    inline function get_maxrate():DWORD{
        return this[6];
    }

    public var eax(get, never):Bool;
    inline function get_eax():Bool{
        return this[7] == 1;
    }

    public var minbuf(get, never):DWORD;
    inline function get_minbuf():DWORD{
        return this[8];
    }

    public var dsver(get, never):DWORD;
    inline function get_dsver():DWORD{
        return this[9];
    }

    public var latency(get, never):DWORD;
    inline function get_latency():DWORD{
        return this[10];
    }

    public var initflags(get, never):DWORD;
    inline function get_initflags():DWORD{
        return this[11];
    }

    public var speakers(get, never):DWORD;
    inline function get_speakers():DWORD{
        return this[12];
    }

    public var freq(get, never):DWORD;
    inline function get_freq():DWORD{
        return this[13];
    }
    public inline function new(data:Array<Int>){
        this = data;
        trace(data);
    }
}