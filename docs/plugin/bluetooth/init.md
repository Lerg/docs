# bluetooth.init()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function][api.type.Function]
> __Return value__      none


> __See also__          [bluetooth.*](/plugin/bluetooth.md)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

Initializes the plugin and calls the specified listener function to notify when the process is complete, or to provide error information.

This call is required and must be executed before making other calls such as [bluetooth.startScan()](/plugin/bluetooth/startScan.md).


## Syntax

	bluetooth.init( [listener] )

##### listener ~^(optional)^~
_[Listener][api.type.Listener]._ Listener function which receives an [init](/plugin/bluetooth/event/init/index.md) event.
