---
title: beam
---
# nfc.beam()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function](https://docs.coronalabs.com/api/type/Function.html)

> __Return value__      none

> __Platform__          Android only

> __See also__          [nfc.*](/plugin/nfc/)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

Beam prepares the device for beaming an NDEF message to another device. The transfer starts when two devices are put near together.

## Syntax
```lua
nfc.beam(params)
```

### params <sub>required</sub>
_[Table](https://docs.coronalabs.com/api/type/Table.html)._ Contains parameters for the call &mdash; see the next section for details.

## Parameter Reference

The `params` table includes parameters for the call.

### message <sub>required</sub>
_[NdefMessage](/plugin/nfc/type/NdefMessage/)._ Contains NDEF message as an array of NDEF records.

### listener <sub>required</sub>
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._ Listener which receives the [beam](/plugin/nfc/event/beam/) event.