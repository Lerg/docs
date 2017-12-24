---
title: newServer
---
# bluetooth.newServer()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function](https://docs.coronalabs.com/api/type/Function.html)
> __Return value__      [Server](/plugin/bluetooth/type/Server/)


> __See also__          [bluetooth.*](/plugin/bluetooth/)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

## Syntax

	bluetooth.newServer( params )

### params <sub>required</sub>
_[Table](https://docs.coronalabs.com/api/type/Table.html)._ Contains parameters for the call &mdash; see the next section for details.


## Parameter Reference

The `params` table includes parameters for the call.

### onCharacteristicReadRequest <sub>optional</sub>
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._

### onCharacteristicWriteRequest <sub>optional</sub>
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._

### onConnectionStateChange <sub>optional</sub>
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._

### onDescriptorReadRequest <sub>optional</sub>
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._

### onDescriptorWriteRequest <sub>optional</sub>
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._

### onExecuteWrite <sub>optional</sub>
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._

### onMtuChanged <sub>optional</sub>
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._

### onNotificationSent <sub>optional</sub>
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._

### onServiceAdded <sub>optional</sub>
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._