---
title: startAdvertising
---
# bluetooth.startAdvertising()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function](https://docs.coronalabs.com/api/type/Function.html)
> __Return value__      [Userdata](https://docs.coronalabs.com/api/type/Userdata.html)


> __See also__          [bluetooth.*](/plugin/bluetooth/)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

Returns a [Userdata](https://docs.coronalabs.com/api/type/Userdata.html) representing an advertising id.

## Syntax

	bluetooth.startAdvertising( params )

### params <sub>required</sub>
_[Table](https://docs.coronalabs.com/api/type/Table.html)._ Contains parameters for the call &mdash; see the next section for details.


## Parameter Reference

The `params` table includes parameters for the call.

### mode <sub>optional</sub>
_[String](https://docs.coronalabs.com/api/type/String.html)._ `"low latency"`, `"low power"`, `"balanced"` (default).

### isConnectable <sub>optional</sub>
_[Boolean](https://docs.coronalabs.com/api/type/Boolean.html)._ default is `false`.

### timeout <sub>optional</sub>
_[Number](https://docs.coronalabs.com/api/type/Number.html)._ integer.

### txPowerLevel <sub>optional</sub>
_[Number](https://docs.coronalabs.com/api/type/Number.html)._ integer.

### broadcast <sub>optional</sub>
_[AdvertiseData](/plugin/bluetooth/type/AdvertiseData/)._

### response <sub>optional</sub>
_[AdvertiseData](/plugin/bluetooth/type/AdvertiseData/)._

### listener <sub>optional</sub>
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._