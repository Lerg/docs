# bluetooth.init()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function](https://docs.coronalabs.com/api/type/Function.html)
> __Return value__      none


> __See also__          [bluetooth.*](/plugin/bluetooth.md)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

Initializes the plugin and calls the specified listener function to notify when the process is complete, or to provide error information.

This call is required and must be executed before making other calls such as [bluetooth.startScan()](/plugin/bluetooth/startScan.md).


## Syntax

	bluetooth.init( [listener] )

### listener ~^(optional)^~
_[Listener](https://docs.coronalabs.com/api/type/Listener]._ Listener function which receives an [init.html)(/plugin/bluetooth/event/init/index.md) event.
