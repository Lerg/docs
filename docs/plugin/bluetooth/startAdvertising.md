# bluetooth.startAdvertising()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function][api.type.Function]
> __Return value__      [Userdata][api.type.Userdata]
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          Bluetooth, bt, startAdvertising
> __See also__          [bluetooth.*](/plugin.bluetooth.md)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

Returns a [Userdata][api.type.Userdata] representing an advertising id.

## Syntax

	bluetooth.startAdvertising( params )

##### params ~^(required)^~
_[Table][api.type.Table]._ Contains parameters for the call &mdash; see the next section for details.


## Parameter Reference

The `params` table includes parameters for the call.

##### mode ~^(optional)^~
_[String][api.type.String]._ `"low latency"`, `"low power"`, `"balanced"` (default).

##### isConnectable ~^(optional)^~
_[Boolean][api.type.Boolean]._ default is `false`.

##### timeout ~^(optional)^~
_[Number][api.type.Number]._ integer.

##### txPowerLevel ~^(optional)^~
_[Number][api.type.Number]._ integer.

##### broadcast ~^(optional)^~
_[AdvertiseData](/plugin.bluetooth.type.AdvertiseData.md)._

##### response ~^(optional)^~
_[AdvertiseData](/plugin.bluetooth.type.AdvertiseData.md)._

##### listener ~^(optional)^~
_[Listener][api.type.Listener]._