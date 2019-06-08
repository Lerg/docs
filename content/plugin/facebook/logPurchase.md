---
title: logPurchase
---
# facebook.logPurchase()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function](https://docs.coronalabs.com/api/type/Function.html)

> __Return value__      none

> __See also__          [facebook.*](/plugin/facebook/)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

Log an app purchase manually. Only use it if you have configured your app not to log purchases automatically.

## Syntax
```lua
facebook.logPurchase(params)
```
### params <sub>required</sub>
_[Table](https://docs.coronalabs.com/api/type/Table.html)._ Contains parameters for the call &mdash; see the next section for details.

## Parameter Reference

The `params` table includes parameters for the call.

### currency <sub>required</sub>
_[String](https://docs.coronalabs.com/api/type/String.html)._ Name of the currency, e.g. `'USD'`.

### value <sub>required</sub>
_[Number](https://docs.coronalabs.com/api/type/Number.html)._ Amount of money.

### params <sub>optional</sub>
_[Table](https://docs.coronalabs.com/api/type/Table.html)._ Additional parameters of the purchase event, e.g. `{fb_description = 'custom description'}`, string keys and string or number values, see Ffacebook SDK documentation for additional parameters.
