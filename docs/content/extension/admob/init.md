---
title: init
---
# admob.init()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function](https://docs.coronalabs.com/api/type/Function.html)

> __Return value__      none

> __See also__          [admob.*](/extension/admob/)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

Initializes the extension. This function has to be called first, before using any other methods of the extension.

## Syntax
```lua
admob.init(params)
```
### params <sub>required</sub>
_[Table](https://docs.coronalabs.com/api/type/Table.html)._ Contains parameters for the call &mdash; see the next section for details.

## Parameter Reference

The `params` table includes parameters for the call.

### app_id <sub>required</sub>
_[String](https://docs.coronalabs.com/api/type/String.html)._ Your app id, e.g. `'ca-app-pub-3940256099942544~3347511713'`.

### test <sub>optional</sub>
_[Boolean](https://docs.coronalabs.com/api/type/Boolean.html)._ If `true`, the test ads will be served. ALWAYS use test ads during the development.

### listener <sub>optional</sub>
_[Function](https://docs.coronalabs.com/api/type/Function.html)._ The callback function which receives all [admob](/extension/admob/event/admob/) events.

## Example

```lua
-- App id and banner id for iOS and Android.
local app_id = {
	['iPhone OS'] = 'ca-app-pub-3940256099942544~1458002511',
	Android = 'ca-app-pub-3940256099942544~3347511713'
}
local banner_id = {
	['iPhone OS'] = 'ca-app-pub-3940256099942544/2934735716',
	Android = 'ca-app-pub-3940256099942544/6300978111'
}
local sysinfo = sys.get_sys_info()

local function listener(event)
	print('admob event type', event.type)
	print('admob event phase', event.phase)
	if event.phase == 'init' then -- Admob has been initialized, now it's safe to load a banner.
		admob.load{
			type = 'banner',
			id = banner_id[sysinfo.system_name],
			size = 'smart',
			position = 'bottom',
			keywords = {'puzzle', 'game'}
		}
	end
end

-- Init Admob with your app id for the current platform.
admob.init{
	app_id = app_id[sysinfo.system_name],
	test = true, -- ALWAYS use test ads, only disable when submitting to the stores.
	listener = listener
}
```