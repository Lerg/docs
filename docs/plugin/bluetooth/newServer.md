# bluetooth.newServer()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function][api.type.Function]
> __Return value__      [Server][plugin.bluetooth.type.Server]
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          Bluetooth, bt, newServer
> __See also__          [bluetooth.*][plugin.bluetooth]
> --------------------- ------------------------------------------------------------------------------------------

## Overview

## Syntax

	bluetooth.newServer( params )

##### params ~^(required)^~
_[Table][api.type.Table]._ Contains parameters for the call &mdash; see the next section for details.


## Parameter Reference

The `params` table includes parameters for the call.

##### onCharacteristicReadRequest ~^(optional)^~
_[Listener][api.type.Listener]._

##### onCharacteristicWriteRequest ~^(optional)^~
_[Listener][api.type.Listener]._

##### onConnectionStateChange ~^(optional)^~
_[Listener][api.type.Listener]._

##### onDescriptorReadRequest ~^(optional)^~
_[Listener][api.type.Listener]._

##### onDescriptorWriteRequest ~^(optional)^~
_[Listener][api.type.Listener]._

##### onExecuteWrite ~^(optional)^~
_[Listener][api.type.Listener]._

##### onMtuChanged ~^(optional)^~
_[Listener][api.type.Listener]._

##### onNotificationSent ~^(optional)^~
_[Listener][api.type.Listener]._

##### onServiceAdded ~^(optional)^~
_[Listener][api.type.Listener]._