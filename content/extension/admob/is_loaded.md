---
title: is_loaded
---
# admob.is_loaded()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function](https://docs.coronalabs.com/api/type/Function.html)

> __Return value__      [Boolean](https://docs.coronalabs.com/api/type/Boolean.html)

> __See also__          [admob.*](/extension/admob/)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

Returns `true` if the specified ad type has been loaded.

## Syntax
```lua
admob.is_loaded(type)
```

### type <sub>required</sub>
_[String](https://docs.coronalabs.com/api/type/String.html)._ Which adverstiment type to check: `'banner'`, `'interstitial'` or `'rewarded'`.

## Example
```lua
print('Is an interstitial ad loaded? ' .. (admob.is_loaded('interstitial') and 'Yes' or 'No'))
```