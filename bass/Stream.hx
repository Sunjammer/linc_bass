package bass;

abstract Stream(Int) from Int {
    public inline function new(handle:Int){
        this = handle;
    }
}