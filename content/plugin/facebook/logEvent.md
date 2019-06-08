---
title: logEvent
---
# facebook.logEvent()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function](https://docs.coronalabs.com/api/type/Function.html)

> __Return value__      none

> __See also__          [facebook.*](/plugin/facebook/)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

Log an app event.

## Syntax
```lua
facebook.logEvent(params)
```
### params <sub>required</sub>
_[Table](https://docs.coronalabs.com/api/type/Table.html)._ Contains parameters for the call &mdash; see the next section for details.

## Parameter Reference

The `params` table includes parameters for the call.

### name <sub>required</sub>
_[String](https://docs.coronalabs.com/api/type/String.html)._ Name of the event.

### value <sub>optional</sub>
_[Number](https://docs.coronalabs.com/api/type/Number.html)._ Value to sum of the event.

### params <sub>optional</sub>
_[Table](https://docs.coronalabs.com/api/type/Table.html)._ Additional parameters of the event, e.g. `{fb_description = 'custom description'}`, string keys and string or number values, see Ffacebook SDK documentation for additional parameters.
