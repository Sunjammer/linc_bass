package bass;

@:noDebug
@:unreflective
extern abstract Channel(Int) from Int{
    public var isValid(get, never):Bool;
    inline function get_isValid():Bool{
        return this!=0;
    }
    public inline function new(handle:Int){
        this = handle;
    }
}