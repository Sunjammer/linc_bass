package bass;

enum DataSource{
    File(path:String);
    Memory(bytes:haxe.io.BytesData);
}