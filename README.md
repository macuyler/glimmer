# Un-bricking my ThinkPad Yoga 11e Chromebook

In an attempt to get Linux running on my brand new ThinkPad 11e, I flashed an
incompatible firmware and bricked it.

I was eventually able to acquire an SOIC8 clip, and run these scripts to flash
the correct firmware and revive my Chromebook!

## Wiring

### Wiring Key

|Pin|ABBR|Purpose|Color|
|---|----|-------|-----|
| 1 |CS  | Chip Select | Orange |
| 2 |SO  | Serial Out | Yellow |
| 3 |WP# | Write Protection | Red |
| 4 |GND | Ground | Brown |
| 5 |SI  | Serial In | Green |
| 6 |CLK | Clock | Blue |
| 7 |HOLD| Hold | Purple |
| 8 |VCC |3.3V Power | Grey |

### Raspberry Pi

> I used a Pi 3B, but it seems most models have similar pin-outs.

| GPIO | A | B | C | D | E | F | G | H | I | J | K | L | M | N | O | P | Q | R | S | T |
| - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - |
| Outer | . | . | . | . | . | . | . | . | . | 4 | . | 1 | . | . | . | . | . | . | . | . |
| Inner | . | 3 | . | 7 | . | . | . | . | 8 | 5 | 2 | 6 | . | . | . | . | . | . | . | . |

### SOIC Clip

> Any side can be top or bottom. You just need to know which side goes where
> when you clip it to the flash chip.

| SOIC Pins |A|B|C|D|
|-|-|-|-|-|
| Top |8|7|6|5|
| Bottom |1|2|3|4|

## References

* [Raspberry Pi Flashrom](https://www.flashrom.org/RaspberryPi)
* [MrChromebox GitHub search for glimmer](https://github.com/MrChromebox/scripts/blob/24c242711d82c32443907f538d0fc3c715bca263/cbmodels.json#L83)
* [Flashing BIOS to Fix a "Bricked" Lenovo Laptop](https://www.partsnotincluded.com/flashing-the-bios-to-fix-a-bricked-lenovo-laptop/)
