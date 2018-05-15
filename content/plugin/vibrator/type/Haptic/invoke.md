---
title: invoke
---
# haptic:invoke()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function](https://docs.coronalabs.com/api/type/Function.html)

> __Return value__      none

> __See also__          [vibrator.*](/plugin/vibrator/) [Haptic](/plugin/vibrator/type/Haptic)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

Invokes the Taptic Engine.

## Syntax
```lua
haptic:invoke([notificationType])
```
### notificationType <sub>optional</sub>
_[String](https://docs.coronalabs.com/api/type/String.html)._ Only for the `'notification'` haptic type. Vibrates with different patterns based on the notification type, can be `'success'` (default), `'warning'` or `'error'`.