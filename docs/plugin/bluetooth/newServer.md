# bluetooth.newServer()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function](https://docs.coronalabs.com/api/type/Function.html)
> __Return value__      [Server](/plugin/bluetooth/type/Server/index.md)


> __See also__          [bluetooth.*](/plugin/bluetooth.md)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

## Syntax

	bluetooth.newServer( params )

### params ~^(required)^~
_[Table](https://docs.coronalabs.com/api/type/Table.html)._ Contains parameters for the call &mdash; see the next section for details.


## Parameter Reference

The `params` table includes parameters for the call.

### onCharacteristicReadRequest ~^(optional)^~
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._

### onCharacteristicWriteRequest ~^(optional)^~
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._

### onConnectionStateChange ~^(optional)^~
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._

### onDescriptorReadRequest ~^(optional)^~
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._

### onDescriptorWriteRequest ~^(optional)^~
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._

### onExecuteWrite ~^(optional)^~
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._

### onMtuChanged ~^(optional)^~
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._

### onNotificationSent ~^(optional)^~
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._

### onServiceAdded ~^(optional)^~
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._