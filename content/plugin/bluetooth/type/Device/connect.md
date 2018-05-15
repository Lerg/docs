---
title: connect
---
# object:connect()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function](https://docs.coronalabs.com/api/type/Function.html)
> __Return value__      [Gatt](/plugin/bluetooth/type/Gatt/)


> __See also__          [bluetooth.*](/plugin/bluetooth/)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

## Syntax

	object:connect( params )

### params <sub>required</sub>
_[Table](https://docs.coronalabs.com/api/type/Table.html)._ Contains parameters for the call &mdash; see the next section for details.


## Parameter Reference

The `params` table includes parameters for the call.

### autoConnect <sub>optional</sub>
_[Boolean](https://docs.coronalabs.com/api/type/Boolean.html)._ default is `false`.

### onCharacteristicChanged <sub>optional</sub>
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._

### onCharacteristicRead <sub>optional</sub>
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._

### onCharacteristicWrite <sub>optional</sub>
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._

### onConnectionStateChange <sub>optional</sub>
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._

### onDescriptorRead <sub>optional</sub>
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._

### onDescriptorWrite <sub>optional</sub>
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._

### onReadRemoteRssi <sub>optional</sub>
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._

### onReliableWriteCompleted <sub>optional</sub>
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._

### onServicesDiscovered <sub>optional</sub>
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._