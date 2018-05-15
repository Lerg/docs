---
title: hasVibrator
---
# vibrator.hasVibrator()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function](https://docs.coronalabs.com/api/type/Function.html)

> __Return value__      [Boolean](https://docs.coronalabs.com/api/type/Boolean.html)

> __See also__          [vibrator.*](/plugin/vibrator/)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

Returns `true` if vibrator is present. On iOS it checks if the Taptic Engine API exists, that would be `true` on all iOS 10 devices, however currently only iPhone 7 and iPhone 7 Plus or later can actually vibrate.

## Syntax
```lua
vibrator.hasVibrator()
```
