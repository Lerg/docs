---
title: vibrate
---
# vibrator.vibrate()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function](https://docs.coronalabs.com/api/type/Function.html)

> __Return value__      none

> __See also__          [vibrator.*](/plugin/vibrator/)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

Vibrates for a specified duration or with a specified pattern.

## Syntax for a simple vibration
```lua
vibrator.vibrate(duration)
```
### duration <sub>required</sub>
_[Integer](/type/Integer)._ Duration of the vibration in milliseconds.

## Syntax for a pattern vibration
```lua
vibrator.vibrate(pattern, [repeat])
```
### pattern <sub>required</sub>
_[Array](https://docs.coronalabs.com/api/type/Array.html)._ An array of integers that are the durations for which to turn on and off the vibrator in milliseconds. The first value indicates the number of milliseconds to wait before turning the vibrator on. The next value indicates the number of milliseconds for which to keep the vibrator on before turning it off. Subsequent values alternate between durations in milliseconds to turn the vibrator off or to turn the vibrator on.

### repeat <sub>optional</sub>
_[Integer](/type/Integer)._ To make the pattern repeat, pass the index from the pattern array at which to start the repetition.
