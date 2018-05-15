---
title: newHaptic
---
# vibrator.newHaptic()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function](https://docs.coronalabs.com/api/type/Function.html)

> __Return value__      [Haptic](/plugin/vibrator/type/Haptic)

> __See also__          [vibrator.*](/plugin/vibrator/)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

Returns a `Haptic` object, which provides the direct access to the Apple's Taptic Engine. iOS only.

For more details on that API please refer to the [Apple's Reference](https://developer.apple.com/reference/uikit/uifeedbackgenerator).

## Syntax
```lua
vibrator.newHaptic([type], [intensity])
```
### type <sub>optional</sub>
_[String](https://docs.coronalabs.com/api/type/String.html)._ Haptic feedback type, can be `'impact'` (default), `'selection'` or `'notification'`.

### intensity <sub>optional</sub>
_[String](https://docs.coronalabs.com/api/type/String.html)._ Intensity level of `'impact'` haptic, can be `'light'`, `'medium'` (default) or `'heavy'`.
