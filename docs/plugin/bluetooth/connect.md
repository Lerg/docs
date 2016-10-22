# bluetooth.connect()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function][api.type.Function]
> __Return value__      none


> __See also__          [bluetooth.*](/plugin/bluetooth.md)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

## Syntax

	bluetooth.connect( params )

##### params ~^(required)^~
_[Table][api.type.Table]._ Contains parameters for the call &mdash; see the next section for details.


## Parameter Reference

The `params` table includes parameters for the call.

##### device ~^(required)^~
_[Device](/plugin/bluetooth/type/Device/index.md)._

##### autoConnect ~^(optional)^~
_[Boolean][api.type.Boolean]._ default is `false`.

##### onCharacteristicChanged ~^(optional)^~
_[Listener][api.type.Listener]._

##### onCharacteristicRead ~^(optional)^~
_[Listener][api.type.Listener]._

##### onCharacteristicWrite ~^(optional)^~
_[Listener][api.type.Listener]._

##### onConnectionStateChange ~^(optional)^~
_[Listener][api.type.Listener]._

##### onDescriptorRead ~^(optional)^~
_[Listener][api.type.Listener]._

##### onDescriptorWrite ~^(optional)^~
_[Listener][api.type.Listener]._

##### onReadRemoteRssi ~^(optional)^~
_[Listener][api.type.Listener]._

##### onReliableWriteCompleted ~^(optional)^~
_[Listener][api.type.Listener]._

##### onServicesDiscovered ~^(optional)^~
_[Listener][api.type.Listener]._