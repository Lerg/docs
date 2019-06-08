---
title: setLimitEventAndDataUsage
---
# facebook.setLimitEventAndDataUsage()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function](https://docs.coronalabs.com/api/type/Function.html)

> __Return value__      none

> __See also__          [facebook.*](/plugin/facebook/)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

Sets whether data such as that generated through Facebook SDK AppEvents and sent to Facebook should be restricted from being used for other than analytics and conversions. Defaults is `false`. This value is stored on the device and persists across app launches.

## Syntax
```lua
	facebook.setLimitEventAndDataUsage(state)
```