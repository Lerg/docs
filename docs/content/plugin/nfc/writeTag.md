---
title: writeTag
---
# nfc.writeTag()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function](https://docs.coronalabs.com/api/type/Function.html)

> __Return value__      none

> __Platform__          Android only

> __See also__          [nfc.*](/plugin/nfc/)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

Writes the provided NDEF message into the recently discovered NFC tag. Therefore call this only after you have discovered a TAG.

## Syntax
```lua
nfc.writeTag(params)
```

### params <sub>required</sub>
_[Table](https://docs.coronalabs.com/api/type/Table.html)._ Contains parameters for the call &mdash; see the next section for details.

## Parameter Reference

The `params` table includes parameters for the call.

### message <sub>required</sub>
_[NdefMessage](/plugin/nfc/type/NdefMessage/)._ Contains NDEF message as an array of NDEF records.

### doNotReleaseTag <sub>optional</sub>
_[Boolean](https://docs.coronalabs.com/api/type/Boolean.html)._ If `true`, the discovered tag won't be released after a successful write operation, so you would be able to write to that tag again if necessary.
