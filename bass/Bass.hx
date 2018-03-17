package bass;

@:keep
@:include('linc_bass.h')
#if !display
@:build(linc.Linc.touch())
@:build(linc.Linc.xml('Bass'))
#end
extern class Bass {

    //external native function definition
    //can be wrapped in linc::libname or call directly
    //and the header for the lib included in linc_bass.h

    @:native('linc::bass::test')
    static function test() : Int;

    //inline functions can be used as wrappers
    //and can be useful to juggle haxe typing to or from the c++ extern

    static inline function inline_test() : Int {
        return untyped __cpp__('linc::bass::test()');
    }

    @:native('linc::bass::test')
    private static function _internal_test() : Int;
    static inline function other_inline_test() : Int {
        return _internal_test();
    }

} //bass