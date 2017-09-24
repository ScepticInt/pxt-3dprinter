{
    var strip_1 = neopixel.create(DigitalPin.P0, 24, NeoPixelMode.RGB);
    strip_1.showColor(NeoPixelColors.Red);
    basic.pause(2000);
    strip_1.showColor(NeoPixelColors.Green);
    basic.pause(1000);
    for (var i = 0; i <= strip_1.length(); i++) {
        strip_1.setPixelColor(i, neopixel.colors(NeoPixelColors.Blue));
        strip_1.show();
        basic.pause(100);
    }
    for (var i = 0; i <= strip_1.length(); i++) {
        strip_1.setPixelColor(i, neopixel.colors(NeoPixelColors.Green));
        strip_1.show();
        basic.pause(100);
    }
    var sub = strip_1.range(10, 20);
    sub.showColor(NeoPixelColors.Yellow);
    basic.pause(200);
    sub.showBarGraph(5, 10);
    basic.pause(200);
    var br_1 = 100;
    strip_1.setBrightness(100);
    input.onButtonPressed(Button.B, function () {
        br_1 = br_1 + 20;
        if (br_1 > 255) {
            br_1 = 5;
        }
        strip_1.setBrightness(br_1);
    });
    var rotationMode_1 = false;
    input.onButtonPressed(Button.A, function () {
        rotationMode_1 = !rotationMode_1;
        if (rotationMode_1) {
            basic.showLeds("\n            . # # # .\n            # . . . #\n            # . . . #\n            # . . . #\n            . # # # .\n            ");
        }
        else {
            basic.showLeds("\n            . . # . .\n            . . . # .\n            # # # # #\n            . . . # .\n            . . # . .\n            ");
        }
    });
    while (true) {
        var x = input.acceleration(Dimension.X) / 2;
        var y = input.acceleration(Dimension.Y) / 2;
        var z = input.acceleration(Dimension.Z) / 2;
        if (rotationMode_1) {
            strip_1.rotate();
        }
        else {
            strip_1.setPixelColor(0, neopixel.rgb(x, y, -z));
            strip_1.shift(1);
        }
        strip_1.show();
        basic.pause(100);
    }
}
