# bluetooth.startAdvertising()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function](https://docs.coronalabs.com/api/type/Function.html)
> __Return value__      [Userdata](https://docs.coronalabs.com/api/type/Userdata.html)


> __See also__          [bluetooth.*](/plugin/bluetooth.md)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

Returns a [Userdata](https://docs.coronalabs.com/api/type/Userdata.html) representing an advertising id.

## Syntax

	bluetooth.startAdvertising( params )

### params ~^(required)^~
_[Table](https://docs.coronalabs.com/api/type/Table.html)._ Contains parameters for the call &mdash; see the next section for details.


## Parameter Reference

The `params` table includes parameters for the call.

### mode ~^(optional)^~
_[String](https://docs.coronalabs.com/api/type/String.html)._ `"low latency"`, `"low power"`, `"balanced"` (default).

### isConnectable ~^(optional)^~
_[Boolean](https://docs.coronalabs.com/api/type/Boolean.html)._ default is `false`.

### timeout ~^(optional)^~
_[Number](https://docs.coronalabs.com/api/type/Number.html)._ integer.

### txPowerLevel ~^(optional)^~
_[Number](https://docs.coronalabs.com/api/type/Number.html)._ integer.

### broadcast ~^(optional)^~
_[AdvertiseData](/plugin/bluetooth/type/AdvertiseData/index.md)._

### response ~^(optional)^~
_[AdvertiseData](/plugin/bluetooth/type/AdvertiseData/index.md)._

### listener ~^(optional)^~
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._