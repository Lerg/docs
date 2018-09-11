---
title: show
---
# toast.show()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function](https://docs.coronalabs.com/api/type/Function.html)

> __Return value__      none

> __See also__          [toast.*](/plugin/toast/)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

Shows a toast message.

## Syntax
```lua
toast.show(message, [params])
```
### name <sub>required</sub>
_[String](https://docs.coronalabs.com/api/type/String.html)._ Text to be displayed.

### params <sub>optional</sub>
_[Table](https://docs.coronalabs.com/api/type/Table.html)._ Additional parameters.

## Parameter reference

The `params` table includes parameters for the call.

### duration <sub>optional</sub>
_[String](https://docs.coronalabs.com/api/type/String.html)._ Display time, possible values are `'short'` and `'long'`. Short is 2 seconds, long is 3.5 seconds. On Android it is system dependent. Default value is `'short'`.

### gravity <sub>optional</sub>
_[String](https://docs.coronalabs.com/api/type/String.html)._ A point on the screen, to which the toast message is anchored. Possible values:
```
'TopLeft'    'TopCenter'    'TopRight'
'CenterLeft' 'Center'       'CenterRight'
'BottomLeft' 'BottomCenter' 'BottomRight'
```
Default is `'BottomCenter'`.

### offset <sub>optional</sub>
_[Array](https://docs.coronalabs.com/api/type/Array.html)._ Contains two values: horizontal offset and vertical offset from the anchor point.
These values are not in pixels, but in device points instead (scales with device screen density). Default is `{64, 64}` or `{64, 0}` or `{0, 64}` or `{0, 0}` depending on the gravity value.
