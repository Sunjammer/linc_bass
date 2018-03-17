package bass;

enum SampleSource{
    File(path:String);
    Memory(bytes:haxe.io.BytesData);
}