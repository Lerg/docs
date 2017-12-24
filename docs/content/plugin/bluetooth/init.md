---
title: init
---
# bluetooth.init()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function](https://docs.coronalabs.com/api/type/Function.html)
> __Return value__      none


> __See also__          [bluetooth.*](/plugin/bluetooth/)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

Initializes the plugin and calls the specified listener function to notify when the process is complete, or to provide error information.

This call is required and must be executed before making other calls such as [bluetooth.startScan()](/plugin/bluetooth/startScan).


## Syntax
```lua
bluetooth.init( [listener] )
```
### listener <sub>optional</sub>
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._ Listener function which receives an [init](/plugin/bluetooth/event/init/) event.
