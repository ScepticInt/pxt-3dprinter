/**
 * Control currents in Pins for analog/digital signals, servos, i2c, ...
 */
//% color=#A80000 weight=30 icon="\uf140"
//% advanced=true
var pins;
(function (pins) {
    /**
     * Re-maps a number from one range to another. That is, a value of ``from low`` would get mapped to ``to low``, a value of ``from high`` to ``to high``, values in-between to values in-between, etc.
     * @param value value to map in ranges
     * @param fromLow the lower bound of the value's current range
     * @param fromHigh the upper bound of the value's current range, eg: 1023
     * @param toLow the lower bound of the value's target range
     * @param toHigh the upper bound of the value's target range, eg: 4
     */
    //% help=pins/map weight=23
    //% blockId=math_map block="map %value|from low %fromLow|from high %fromHigh|to low %toLow|to high %toHigh"
    function map(value, fromLow, fromHigh, toLow, toHigh) {
        return ((value - fromLow) * (toHigh - toLow)) / (fromHigh - fromLow) + toLow;
    }
    pins.map = map;
    /**
     * Read one number from 7-bit I2C address.
     */
    //% help=pins/i2c-read-number blockGap=8 advanced=true
    //% blockId=pins_i2c_readnumber block="i2c read number|at address %address|of format %format=i2c_sizeof|repeated %repeat" weight=7
    function i2cReadNumber(address, format, repeated) {
        var buf = pins.i2cReadBuffer(address, pins.sizeOf(format), repeated);
        return buf.getNumber(format, 0);
    }
    pins.i2cReadNumber = i2cReadNumber;
    /**
     * Write one number to a 7-bit I2C address.
     */
    //% help=pins/i2c-write-number blockGap=8 advanced=true
    //% blockId=i2c_writenumber block="i2c write number|at address %address|with value %value|of format %format=i2c_sizeof|repeated %repeat" weight=6
    function i2cWriteNumber(address, value, format, repeated) {
        var buf = pins.createBuffer(pins.sizeOf(format));
        buf.setNumber(format, 0, value);
        pins.i2cWriteBuffer(address, buf, repeated);
    }
    pins.i2cWriteNumber = i2cWriteNumber;
    /**
     * Get the size in bytes of specified number format.
     */
    //%
    function sizeOf(format) {
        switch (format) {
            case NumberFormat.Int8LE:
            case NumberFormat.UInt8LE:
            case NumberFormat.Int8BE:
            case NumberFormat.UInt8BE:
                return 1;
            case NumberFormat.Int16LE:
            case NumberFormat.UInt16LE:
            case NumberFormat.Int16BE:
            case NumberFormat.UInt16BE:
                return 2;
            case NumberFormat.Int32LE:
            case NumberFormat.Int32BE:
                return 4;
        }
        return 0;
    }
    pins.sizeOf = sizeOf;
})(pins || (pins = {}));
