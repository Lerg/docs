# object:connect()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function](https://docs.coronalabs.com/api/type/Function.html)
> __Return value__      [Gatt](/plugin/bluetooth/type/Gatt/index.md)


> __See also__          [bluetooth.*](/plugin/bluetooth/index.md)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

## Syntax

	object:connect( params )

### params ~^(required)^~
_[Table](https://docs.coronalabs.com/api/type/Table.html)._ Contains parameters for the call &mdash; see the next section for details.


## Parameter Reference

The `params` table includes parameters for the call.

### autoConnect ~^(optional)^~
_[Boolean](https://docs.coronalabs.com/api/type/Boolean.html)._ default is `false`.

### onCharacteristicChanged ~^(optional)^~
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._

### onCharacteristicRead ~^(optional)^~
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._

### onCharacteristicWrite ~^(optional)^~
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._

### onConnectionStateChange ~^(optional)^~
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._

### onDescriptorRead ~^(optional)^~
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._

### onDescriptorWrite ~^(optional)^~
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._

### onReadRemoteRssi ~^(optional)^~
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._

### onReliableWriteCompleted ~^(optional)^~
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._

### onServicesDiscovered ~^(optional)^~
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._