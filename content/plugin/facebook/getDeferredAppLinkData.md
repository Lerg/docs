---
title: getDeferredAppLinkData
---
# facebook.getDeferredAppLinkData()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function](https://docs.coronalabs.com/api/type/Function.html)

> __Return value__      none

> __See also__          [facebook.*](/plugin/facebook/)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

Asynchronously fetches app link information that might have been stored for use after installation of the app.

## Syntax
```lua
	facebook.getDeferredAppLinkData(params)
```
### params <sub>required</sub>
_[Table](https://docs.coronalabs.com/api/type/Table.html)._ Contains parameters for the call &mdash; see the next section for details.

## Parameter Reference

The `params` table includes parameters for the call.

### listener <sub>required</sub>
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._ The listener receices the [fbapplink](/plugin/facebook/event/fbapplink/) event containing the deferred url.