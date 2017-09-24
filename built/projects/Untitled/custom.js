/**
 * Use this file to define custom functions and blocks.
 * Read more at https://makecode.microbit.org/blocks/custom
 */
var MyEnum;
(function (MyEnum) {
    //% block="one"
    MyEnum[MyEnum["One"] = 0] = "One";
    //% block="two"
    MyEnum[MyEnum["Two"] = 1] = "Two";
})(MyEnum || (MyEnum = {}));
/**
 * Custom blocks
 */
//% weight=100 color=#0fbc11 icon=""
var custom;
(function (custom) {
    /**
     * TODO: describe your function here
     * @param n describe parameter here, eg: 5
     * @param s describe parameter here, eg: "Hello"
     * @param e describe parameter here
     */
    //% block
    function foo(n, s, e) {
        // Add code here
    }
    custom.foo = foo;
    /**
     * TODO: describe your function here
     * @param value describe value here, eg: 5
     */
    //% block
    function fib(value) {
        return value <= 1 ? value : fib(value - 1) + fib(value - 2);
    }
    custom.fib = fib;
})(custom || (custom = {}));
