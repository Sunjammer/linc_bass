package bass;

class DeviceInfo{
    public var name:String;
    public var driver:String;
    public var flags:Int;
    public inline function new(name:String, driver:String, flags:Int ) {
        this.name = name;
        this.driver = driver;
        this.flags = flags;
    }
}