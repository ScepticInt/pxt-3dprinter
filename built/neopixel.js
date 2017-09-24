/**
 * Well known colors for a NeoPixel strip
 */
var NeoPixelColors;
(function (NeoPixelColors) {
    //% block=red
    NeoPixelColors[NeoPixelColors["Red"] = 16711680] = "Red";
    //% block=orange
    NeoPixelColors[NeoPixelColors["Orange"] = 16753920] = "Orange";
    //% block=yellow
    NeoPixelColors[NeoPixelColors["Yellow"] = 16776960] = "Yellow";
    //% block=green
    NeoPixelColors[NeoPixelColors["Green"] = 65280] = "Green";
    //% block=blue
    NeoPixelColors[NeoPixelColors["Blue"] = 255] = "Blue";
    //% block=indigo
    NeoPixelColors[NeoPixelColors["Indigo"] = 4915330] = "Indigo";
    //% block=violet
    NeoPixelColors[NeoPixelColors["Violet"] = 9055202] = "Violet";
    //% block=purple
    NeoPixelColors[NeoPixelColors["Purple"] = 16711935] = "Purple";
    //% block=white
    NeoPixelColors[NeoPixelColors["White"] = 16777215] = "White";
})(NeoPixelColors || (NeoPixelColors = {}));
/**
 * Different modes for RGB or RGB+W NeoPixel strips
 */
var NeoPixelMode;
(function (NeoPixelMode) {
    //% block="RGB (GRB format)"
    NeoPixelMode[NeoPixelMode["RGB"] = 0] = "RGB";
    //% block="RGB+W"
    NeoPixelMode[NeoPixelMode["RGBW"] = 1] = "RGBW";
    //% block="RGB (RGB format)"
    NeoPixelMode[NeoPixelMode["RGB_RGB"] = 2] = "RGB_RGB";
})(NeoPixelMode || (NeoPixelMode = {}));
/**
 * Functions to operate NeoPixel strips.
 */
//% weight=5 color=#2699BF icon="\uf110"
var neopixel;
(function (neopixel) {
    //% shim=sendBufferAsm
    //% parts="neopixel"
    function sendBuffer(buf, pin) {
    }
    /**
     * A NeoPixel strip
     */
    var Strip = (function () {
        function Strip() {
        }
        /**
         * Shows all LEDs to a given color (range 0-255 for r, g, b).
         * @param rgb RGB color of the LED
         */
        //% blockId="neopixel_set_strip_color" block="%strip|show color %rgb=neopixel_colors" 
        //% weight=85 blockGap=8
        //% parts="_neopixel"
        Strip.prototype.showColor = function (rgb) {
            this.setAllRGB(rgb);
            this.show();
        };
        /**
         * Shows a rainbow pattern on all LEDs.
         * @param startHue the start hue value for the rainbow, eg: 1
         * @param endHue the end hue value for the rainbow, eg: 360
         */
        //% blockId="neopixel_set_strip_rainbow" block="%strip|show rainbow from %startHue|to %endHue" 
        //% weight=85 blockGap=8
        //% parts="neopixel"
        Strip.prototype.showRainbow = function (startHue, endHue) {
            if (startHue === void 0) { startHue = 1; }
            if (endHue === void 0) { endHue = 360; }
            var start = neopixel.hsl(startHue, 100, 50);
            var end = neopixel.hsl(endHue, 100, 50);
            var colors = neopixel.interpolateHSL(start, end, this._length, HueInterpolationDirection.Clockwise);
            for (var i = 0; i < colors.length; i++) {
                var hsl_1 = colors[i];
                var rgb_1 = hsl_1.toRGB();
                this.setPixelColor(i, rgb_1);
            }
            this.show();
        };
        /**
         * Displays a vertical bar graph based on the `value` and `high` value.
         * If `high` is 0, the chart gets adjusted automatically.
         * @param value current value to plot
         * @param high maximum value, eg: 255
         */
        //% weight=84
        //% blockId=neopixel_show_bar_graph block="%strip|show bar graph of %value |up to %high" icon="\uf080" blockExternalInputs=true
        //% parts="neopixel"
        Strip.prototype.showBarGraph = function (value, high) {
            if (high <= 0) {
                this.clear();
                this.setPixelColor(0, NeoPixelColors.Yellow);
                this.show();
                return;
            }
            value = Math.abs(value);
            var n = this._length;
            var n1 = n - 1;
            var v = (value * n) / high;
            if (v == 0) {
                this.setPixelColor(0, 0x666600);
                for (var i = 1; i < n; ++i)
                    this.setPixelColor(i, 0);
            }
            else {
                for (var i = 0; i < n; ++i) {
                    if (i <= v) {
                        var b = i * 255 / n1;
                        this.setPixelColor(i, neopixel.rgb(b, 0, 255 - b));
                    }
                    else
                        this.setPixelColor(i, 0);
                }
            }
            this.show();
        };
        /**
         * Set LED to a given color (range 0-255 for r, g, b).
         * You need to call ``show`` to make the changes visible.
         * @param pixeloffset position of the NeoPixel in the strip
         * @param rgb RGB color of the LED
         */
        //% blockId="neopixel_set_pixel_color" block="%strip|set pixel color at %pixeloffset|to %rgb=neopixel_colors" 
        //% blockGap=8
        //% weight=80
        //% parts="neopixel" advanced=true
        Strip.prototype.setPixelColor = function (pixeloffset, rgb) {
            this.setPixelRGB(pixeloffset, rgb);
        };
        /**
         * For NeoPixels with RGB+W LEDs, set the white LED brightness. This only works for RGB+W NeoPixels.
         * @param pixeloffset position of the LED in the strip
         * @param white brightness of the white LED
         */
        //% blockId="neopixel_set_pixel_white" block="%strip|set pixel white LED at %pixeloffset|to %white" 
        //% blockGap=8
        //% weight=80
        //% parts="neopixel" advanced=true
        Strip.prototype.setPixelWhiteLED = function (pixeloffset, white) {
            if (this._mode === NeoPixelMode.RGBW) {
                this.setPixelW(pixeloffset, white);
            }
        };
        /**
         * Send all the changes to the strip.
         */
        //% blockId="neopixel_show" block="%strip|show" blockGap=8
        //% weight=79
        //% parts="neopixel"
        Strip.prototype.show = function () {
            sendBuffer(this.buf, this.pin);
        };
        /**
         * Turn off all LEDs.
         * You need to call ``show`` to make the changes visible.
         */
        //% blockId="neopixel_clear" block="%strip|clear"
        //% weight=76
        //% parts="neopixel"
        Strip.prototype.clear = function () {
            var stride = this._mode === NeoPixelMode.RGBW ? 4 : 3;
            this.buf.fill(0, this.start * stride, this._length * stride);
        };
        /**
         * Gets the number of pixels declared on the strip
         */
        //% blockId="neopixel_length" block="%strip|length" blockGap=8
        //% weight=60 advanced=true
        Strip.prototype.length = function () {
            return this._length;
        };
        /**
         * Set the brightness of the strip. This flag only applies to future operation.
         * @param brightness a measure of LED brightness in 0-255. eg: 255
         */
        //% blockId="neopixel_set_brightness" block="%strip|set brightness %brightness" blockGap=8
        //% weight=59
        //% parts="neopixel" advanced=true
        Strip.prototype.setBrightness = function (brightness) {
            this.brightness = brightness & 0xff;
        };
        /**
         * Apply brightness to current colors using a quadratic easing function.
         **/
        //% blockId="neopixel_each_brightness" block="%strip|ease brightness" blockGap=8
        //% weight=58
        //% parts="neopixel" advanced=true
        Strip.prototype.easeBrightness = function () {
            var stride = this._mode === NeoPixelMode.RGBW ? 4 : 3;
            var br = this.brightness;
            var buf = this.buf;
            var end = this.start + this._length;
            var mid = this._length / 2;
            for (var i = this.start; i < end; ++i) {
                var k = i - this.start;
                var ledoffset = i * stride;
                var br_1 = k > mid ? 255 * (this._length - 1 - k) * (this._length - 1 - k) / (mid * mid) : 255 * k * k / (mid * mid);
                serial.writeLine(k + ":" + br_1);
                var r = (buf[ledoffset + 0] * br_1) >> 8;
                buf[ledoffset + 0] = r;
                var g = (buf[ledoffset + 1] * br_1) >> 8;
                buf[ledoffset + 1] = g;
                var b = (buf[ledoffset + 2] * br_1) >> 8;
                buf[ledoffset + 2] = b;
                if (stride == 4) {
                    var w = (buf[ledoffset + 3] * br_1) >> 8;
                    buf[ledoffset + 3] = w;
                }
            }
        };
        /**
         * Create a range of LEDs.
         * @param start offset in the LED strip to start the range
         * @param length number of LEDs in the range. eg: 4
         */
        //% weight=89
        //% blockId="neopixel_range" block="%strip|range from %start|with %length|leds"
        //% parts="neopixel"
        Strip.prototype.range = function (start, length) {
            var strip = new Strip();
            strip.buf = this.buf;
            strip.pin = this.pin;
            strip.brightness = this.brightness;
            strip.start = this.start + Math.clamp(0, this._length - 1, start);
            strip._length = Math.clamp(0, this._length - (strip.start - this.start), length);
            return strip;
        };
        /**
         * Shift LEDs forward and clear with zeros.
         * You need to call ``show`` to make the changes visible.
         * @param offset number of pixels to shift forward, eg: 1
         */
        //% blockId="neopixel_shift" block="%strip|shift pixels by %offset" blockGap=8
        //% weight=40
        //% parts="neopixel"
        Strip.prototype.shift = function (offset) {
            if (offset === void 0) { offset = 1; }
            var stride = this._mode === NeoPixelMode.RGBW ? 4 : 3;
            this.buf.shift(-offset * stride, this.start * stride, this._length * stride);
        };
        /**
         * Rotate LEDs forward.
         * You need to call ``show`` to make the changes visible.
         * @param offset number of pixels to rotate forward, eg: 1
         */
        //% blockId="neopixel_rotate" block="%strip|rotate pixels by %offset" blockGap=8
        //% weight=39
        //% parts="neopixel"
        Strip.prototype.rotate = function (offset) {
            if (offset === void 0) { offset = 1; }
            var stride = this._mode === NeoPixelMode.RGBW ? 4 : 3;
            this.buf.rotate(-offset * stride, this.start * stride, this._length * stride);
        };
        /**
         * Set the pin where the neopixel is connected, defaults to P0.
         */
        //% weight=10
        //% parts="neopixel" advanced=true
        Strip.prototype.setPin = function (pin) {
            this.pin = pin;
            pins.digitalWritePin(this.pin, 0);
            // don't yield to avoid races on initialization
        };
        Strip.prototype.setBufferRGB = function (offset, red, green, blue) {
            if (this._mode === NeoPixelMode.RGB_RGB) {
                this.buf[offset + 0] = red;
                this.buf[offset + 1] = green;
            }
            else {
                this.buf[offset + 0] = green;
                this.buf[offset + 1] = red;
            }
            this.buf[offset + 2] = blue;
        };
        Strip.prototype.setAllRGB = function (rgb) {
            var red = unpackR(rgb);
            var green = unpackG(rgb);
            var blue = unpackB(rgb);
            var br = this.brightness;
            if (br < 255) {
                red = (red * br) >> 8;
                green = (green * br) >> 8;
                blue = (blue * br) >> 8;
            }
            var end = this.start + this._length;
            var stride = this._mode === NeoPixelMode.RGBW ? 4 : 3;
            for (var i = this.start; i < end; ++i) {
                this.setBufferRGB(i * stride, red, green, blue);
            }
        };
        Strip.prototype.setAllW = function (white) {
            if (this._mode !== NeoPixelMode.RGBW)
                return;
            var br = this.brightness;
            if (br < 255) {
                white = (white * br) >> 8;
            }
            var buf = this.buf;
            var end = this.start + this._length;
            for (var i = this.start; i < end; ++i) {
                var ledoffset = i * 4;
                buf[ledoffset + 3] = white;
            }
        };
        Strip.prototype.setPixelRGB = function (pixeloffset, rgb) {
            if (pixeloffset < 0
                || pixeloffset >= this._length)
                return;
            var stride = this._mode === NeoPixelMode.RGBW ? 4 : 3;
            pixeloffset = (pixeloffset + this.start) * stride;
            var red = unpackR(rgb);
            var green = unpackG(rgb);
            var blue = unpackB(rgb);
            var br = this.brightness;
            if (br < 255) {
                red = (red * br) >> 8;
                green = (green * br) >> 8;
                blue = (blue * br) >> 8;
            }
            this.setBufferRGB(pixeloffset, red, green, blue);
        };
        Strip.prototype.setPixelW = function (pixeloffset, white) {
            if (this._mode !== NeoPixelMode.RGBW)
                return;
            if (pixeloffset < 0
                || pixeloffset >= this._length)
                return;
            pixeloffset = (pixeloffset + this.start) * 4;
            var br = this.brightness;
            if (br < 255) {
                white = (white * br) >> 8;
            }
            var buf = this.buf;
            buf[pixeloffset + 3] = white;
        };
        return Strip;
    }());
    neopixel.Strip = Strip;
    /**
     * Create a new NeoPixel driver for `numleds` LEDs.
     * @param pin the pin where the neopixel is connected.
     * @param numleds number of leds in the strip, eg: 24,30,60,64
     */
    //% blockId="neopixel_create" block="NeoPixel at pin %pin|with %numleds|leds as %mode"
    //% weight=90 blockGap=8
    //% parts="neopixel"
    //% trackArgs=0,2
    function create(pin, numleds, mode) {
        var strip = new Strip();
        var stride = mode === NeoPixelMode.RGBW ? 4 : 3;
        strip.buf = pins.createBuffer(numleds * stride);
        strip.start = 0;
        strip._length = numleds;
        strip._mode = mode;
        strip.setBrightness(255);
        strip.setPin(pin);
        return strip;
    }
    neopixel.create = create;
    /**
     * Converts red, green, blue channels into a RGB color
     * @param red value of the red channel between 0 and 255. eg: 255
     * @param green value of the green channel between 0 and 255. eg: 255
     * @param blue value of the blue channel between 0 and 255. eg: 255
     */
    //% weight=1
    //% blockId="neopixel_rgb" block="red %red|green %green|blue %blue"
    //% advanced=true
    function rgb(red, green, blue) {
        return packRGB(red, green, blue);
    }
    neopixel.rgb = rgb;
    /**
     * Gets the RGB value of a known color
    */
    //% weight=2 blockGap=8
    //% blockId="neopixel_colors" block="%color"
    //% advanced=true
    function colors(color) {
        return color;
    }
    neopixel.colors = colors;
    function packRGB(a, b, c) {
        return ((a & 0xFF) << 16) | ((b & 0xFF) << 8) | (c & 0xFF);
    }
    function unpackR(rgb) {
        var r = (rgb >> 16) & 0xFF;
        return r;
    }
    function unpackG(rgb) {
        var g = (rgb >> 8) & 0xFF;
        return g;
    }
    function unpackB(rgb) {
        var b = (rgb) & 0xFF;
        return b;
    }
    /**
     * A HSL (hue, saturation, luminosity) format color
     */
    var HSL = (function () {
        function HSL(h, s, l) {
            this.h = h % 360;
            this.s = Math.clamp(0, 99, s);
            this.l = Math.clamp(0, 99, l);
        }
        /**
         * Shifts the hue of a HSL color
         * @param hsl the HSL (hue, saturation, lightness) color
         * @param offset value to shift the hue channel by; hue is between 0 and 360. eg: 10
         */
        //% weight=1
        //% blockId="neopixel_rotate_hue" block="shift %hsl| hue by %offset"
        //% advanced=true
        HSL.prototype.rotateHue = function (offset) {
            this.h = (this.h + offset) % 360;
        };
        /**
         * Converts from an HSL (hue, saturation, luminosity) format color to an RGB (red,
         * green, blue) format color. Input ranges h between [0,360], s between
         * [0, 100], and l between [0, 100], and output r, g, b ranges between [0,255]
        */
        //% weight=2 blockGap=8
        //% blockId="neopixel_hsl_to_rgb" block="%hsl| to RGB"
        //% advanced=true
        HSL.prototype.toRGB = function () {
            //reference: https://en.wikipedia.org/wiki/HSL_and_HSV#From_HSL
            var h = this.h;
            var s = this.s;
            var l = this.l;
            var c = (((100 - Math.abs(2 * l - 100)) * s) << 8) / 10000; //chroma, [0,255]
            var h1 = h / 60; //[0,6]
            var h2 = (h - h1 * 60) * 256 / 60; //[0,255]
            var temp = Math.abs((((h1 % 2) << 8) + h2) - 256);
            var x = (c * (256 - (temp))) >> 8; //[0,255], second largest component of this color
            var r$;
            var g$;
            var b$;
            if (h1 == 0) {
                r$ = c;
                g$ = x;
                b$ = 0;
            }
            else if (h1 == 1) {
                r$ = x;
                g$ = c;
                b$ = 0;
            }
            else if (h1 == 2) {
                r$ = 0;
                g$ = c;
                b$ = x;
            }
            else if (h1 == 3) {
                r$ = 0;
                g$ = x;
                b$ = c;
            }
            else if (h1 == 4) {
                r$ = x;
                g$ = 0;
                b$ = c;
            }
            else if (h1 == 5) {
                r$ = c;
                g$ = 0;
                b$ = x;
            }
            var m = ((l * 2 << 8) / 100 - c) / 2;
            var r = r$ + m;
            var g = g$ + m;
            var b = b$ + m;
            return packRGB(r, g, b);
        };
        return HSL;
    }());
    neopixel.HSL = HSL;
    /**
     * Creates a HSL (hue, saturation, luminosity) color
     * @param hue value of the hue channel between 0 and 360. eg: 360
     * @param sat value of the saturation channel between 0 and 100. eg: 100
     * @param lum value of the luminosity channel between 0 and 100. eg: 50
     */
    //% weight=1
    //% blockId="neopixel_hsl" block="hue %hue|sat %sat|lum %lum"
    //% advanced=true
    function hsl(hue, sat, lum) {
        return new HSL(hue, sat, lum);
    }
    neopixel.hsl = hsl;
    var HueInterpolationDirection;
    (function (HueInterpolationDirection) {
        HueInterpolationDirection[HueInterpolationDirection["Clockwise"] = 0] = "Clockwise";
        HueInterpolationDirection[HueInterpolationDirection["CounterClockwise"] = 1] = "CounterClockwise";
        HueInterpolationDirection[HueInterpolationDirection["Shortest"] = 2] = "Shortest";
    })(HueInterpolationDirection = neopixel.HueInterpolationDirection || (neopixel.HueInterpolationDirection = {}));
    /**
     * Interpolates between two HSL colors
     * @param startColor the start HSL color
     * @param endColor the end HSL color
     * @param steps the number of steps to interpolate for. Note that if steps
     *  is 1, the color midway between the start and end color will be returned.
     * @param direction the direction around the color wheel the hue should be interpolated.
     */
    //% parts="neopixel"
    //% advanced=true
    function interpolateHSL(startColor, endColor, steps, direction) {
        if (steps <= 0)
            steps = 1;
        //hue
        var h1 = startColor.h;
        var h2 = endColor.h;
        var hDistCW = ((h2 + 360) - h1) % 360;
        var hStepCW = (hDistCW * 100) / steps;
        var hDistCCW = ((h1 + 360) - h2) % 360;
        var hStepCCW = -(hDistCCW * 100) / steps;
        var hStep;
        if (direction === HueInterpolationDirection.Clockwise) {
            hStep = hStepCW;
        }
        else if (direction === HueInterpolationDirection.CounterClockwise) {
            hStep = hStepCCW;
        }
        else {
            hStep = hDistCW < hDistCCW ? hStepCW : hStepCCW;
        }
        var h1_100 = h1 * 100; //we multiply by 100 so we keep more accurate results while doing interpolation
        //sat
        var s1 = startColor.s;
        var s2 = endColor.s;
        var sDist = s2 - s1;
        var sStep = sDist / steps;
        var s1_100 = s1 * 100;
        //lum
        var l1 = startColor.l;
        var l2 = endColor.l;
        var lDist = l2 - l1;
        var lStep = lDist / steps;
        var l1_100 = l1 * 100;
        //interpolate
        var colors = [];
        if (steps === 1) {
            colors.push(hsl(h1 + hStep, s1 + sStep, l1 + lStep));
        }
        else {
            colors.push(startColor);
            for (var i = 1; i < steps - 1; i++) {
                var h = (h1_100 + i * hStep) / 100 + 360;
                var s = (s1_100 + i * sStep) / 100;
                var l = (l1_100 + i * lStep) / 100;
                colors.push(hsl(h, s, l));
            }
            colors.push(endColor);
        }
        return colors;
    }
    neopixel.interpolateHSL = interpolateHSL;
})(neopixel || (neopixel = {}));
