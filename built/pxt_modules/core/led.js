/**
 * Control of the LED screen.
 */
//% color=#5C2D91 weight=97 icon="\uf205"
var led;
(function (led) {
    // what's the current high value
    var barGraphHigh = 0;
    // when was the current high value recorded
    var barGraphHighLast = 0;
    /**
     * Displays a vertical bar graph based on the `value` and `high` value.
     * If `high` is 0, the chart gets adjusted automatically.
     * @param value current value to plot
     * @param high maximum value. If 0, maximum value adjusted automatically, eg: 0
     */
    //% help=led/plot-bar-graph weight=20
    //% blockId=device_plot_bar_graph block="plot bar graph of %value |up to %high" icon="\uf080" blockExternalInputs=true
    //% parts="ledmatrix"
    function plotBarGraph(value, high) {
        var now = input.runningTime();
        serial.writeString(value.toString() + "\r\n");
        value = Math.abs(value);
        if (high != 0)
            barGraphHigh = high;
        else if (value > barGraphHigh || now - barGraphHighLast > 10000) {
            barGraphHigh = value;
            barGraphHighLast = now;
        }
        barGraphHigh = Math.max(barGraphHigh, 16);
        var v = (value * 15) / barGraphHigh;
        var k = 0;
        for (var y = 4; y >= 0; --y) {
            for (var x = 0; x < 3; ++x) {
                if (k > v) {
                    led.unplot(2 - x, y);
                    led.unplot(2 + x, y);
                }
                else {
                    led.plot(2 - x, y);
                    led.plot(2 + x, y);
                }
                ++k;
            }
        }
    }
    led.plotBarGraph = plotBarGraph;
    /**
     * Toggles a particular pixel
     * @param x TODO
     * @param y TODO
     */
    //% help=led/toggle weight=77
    //% blockId=device_led_toggle block="toggle|x %x|y %y" icon="\uf204" blockGap=8
    //% parts="ledmatrix"
    //% x.min=0 x.max=4 y.min=0 y.max=4
    function toggle(x, y) {
        if (led.point(x, y)) {
            led.unplot(x, y);
        }
        else {
            led.plot(x, y);
        }
    }
    led.toggle = toggle;
    /**
     * Turns all LEDS on
     */
    //% help=led/plot-all
    //% parts="ledmatrix"
    function plotAll() {
        for (var i = 0; i < 5; i++) {
            for (var j = 0; j < 5; j++) {
                led.plot(i, j);
            }
        }
    }
    led.plotAll = plotAll;
    /**
     * Inverts the current LED display
     */
    //% help=led/toggle-all
    //% parts="ledmatrix"
    function toggleAll() {
        for (var i = 0; i < 5; i++) {
            for (var j = 0; j < 5; j++) {
                led.toggle(i, j);
            }
        }
    }
    led.toggleAll = toggleAll;
    /**
     * Fades in the screen display.
     * @param ms TODO
     */
    //% help=led/fade-in
    //% parts="ledmatrix"
    function fadeIn(ms) {
        if (ms === void 0) { ms = 700; }
        if (ms < 20) {
            led.setBrightness(255);
            return;
        }
        var dt = 50;
        var brightness = led.brightness();
        var start = input.runningTime();
        var elapsed = 0;
        while (elapsed < ms) {
            led.setBrightness(brightness + ((255 - brightness) * elapsed) / ms);
            basic.pause(dt);
            elapsed = input.runningTime() - start;
        }
        led.setBrightness(255);
    }
    led.fadeIn = fadeIn;
    /**
     * Fades out the screen brightness.
     * @param ms TODO
     */
    //% help=led/fade-out
    //% parts="ledmatrix"
    function fadeOut(ms) {
        if (ms === void 0) { ms = 700; }
        if (ms < 20) {
            led.setBrightness(0);
            return;
        }
        var brightness = led.brightness();
        var dt = 50;
        var start = input.runningTime();
        var elapsed = 0;
        while (elapsed < ms) {
            led.setBrightness(brightness - (brightness * elapsed) / ms);
            basic.pause(dt);
            elapsed = input.runningTime() - start;
        }
        led.setBrightness(0);
    }
    led.fadeOut = fadeOut;
})(led || (led = {}));
