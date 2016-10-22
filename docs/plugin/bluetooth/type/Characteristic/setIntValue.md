# object:setIntValue()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function][api.type.Function]
> __Return value__      [Boolean][api.type.Boolean]
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          Bluetooth, bt, Characteristic, setIntValue
> __See also__          [bluetooth.*](/plugin.bluetooth.md)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

## Syntax

	object:setIntValue( value, [format], [offset] )

##### value ~^(required)^~
_[Number][api.type.Number]._ Integer.

##### format ~^(optional)^~
_[String][api.type.String]._ `"sint8"`, `"sint16"`, `"sint32"` (default), `"uint8"`, `"uint16"` or `"uint32"`.

##### offset ~^(optional)^~
_[Number][api.type.Number]._ Integer, default is 0.