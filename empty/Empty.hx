package empty;

@:keep
@:include('linc_empty.h')
#if !display
@:build(linc.Linc.touch())
@:build(linc.Linc.xml('empty'))
#end
extern class Empty {

        //external native function definition
        //can be wrapped in linc::libname or call directly
        //and the header for the lib included in linc_empty.h

    // @:native('linc::empty::native_example')
    // static function native_example() : Int;

        //inline functions can be used as wrappers

    // static inline function example() : Void {
    //     trace('empty project example');
    // }

} //Empty