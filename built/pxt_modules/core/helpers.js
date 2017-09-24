var console;
(function (console) {
    function log(msg) {
        serial.writeString(msg);
        serial.writeString("\r\n");
    }
    console.log = log;
})(console || (console = {}));
var Math;
(function (Math) {
    /**
     * Generates a `true` or `false` value randomly, just like flipping a coin.
     */
    //% blockId=logic_random block="pick random true or false"
    //% help=math/random-boolean
    function randomBoolean() {
        return Math.random(2) == 0;
    }
    Math.randomBoolean = randomBoolean;
})(Math || (Math = {}));
