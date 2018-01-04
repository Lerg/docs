---
title: show
---
# admob.show()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function](https://docs.coronalabs.com/api/type/Function.html)

> __Return value__      none

> __See also__          [admob.*](/extension/admob/)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

Displays a loaded ads. Use [admob.load()](/extension/admob/load) to load an ad before calling this method.

You can check if an ad has been loaded with [admob.is_loaded()](/extension/admob/is_loaded) method or you can listen to the [admob](/extension/admob/event/admob/) event with a loaded phase:
```lua
-- Inside admob listener.
if event.type == 'interstitial' and event.phase == 'loaded' then
	admob.show('interstitial')
end
```

Banners don't need this method because they are displayed automatically when loaded.

## Syntax
```lua
admob.show(type)
```
### type <sub>required</sub>
_[String](https://docs.coronalabs.com/api/type/String.html)._ Which adverstiment type to display: `'interstitial'` or `'rewarded'`.

## Example

```lua
admob.show('rewarded')
```
