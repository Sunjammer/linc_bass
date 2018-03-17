package bass;

abstract Sample(Int) from Int to Int {
    public inline function new(handle:Int){
        this = handle;
    }
}