---
title: show
---
# nfc.show()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function](https://docs.coronalabs.com/api/type/Function.html)

> __Return value__      none

> __Platform__          iOS only

> __See also__          [nfc.*](/plugin/nfc/)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

Shows iOS native NFC reading dialog.

## Syntax
```lua
nfc.show(params)
```

### params <sub>required</sub>
_[Table](https://docs.coronalabs.com/api/type/Table.html)._ Contains parameters for the call &mdash; see the next section for details.

## Parameter Reference

The `params` table includes parameters for the call.

### message <sub>optional</sub>
_[String](https://docs.coronalabs.com/api/type/String.html)._ A message that appears inside the dialog window with instructions for a user, e.g. `'Place a tag near your device.'`

### closeAfterFirstRead <sub>optional</sub>
_[Boolean](https://docs.coronalabs.com/api/type/Boolean.html)._ If `true`, the dialog window will close after the first discovered tag. Otherwise you will have to close the dialog manually or the user will close it.
