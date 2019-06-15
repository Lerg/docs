---
title: init
---
# facebook.init()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function](https://docs.coronalabs.com/api/type/Function.html)

> __Return value__      none

> __See also__          [facebook.*](/plugin/facebook/)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

Must be callled before you try to use the plugin.

## Syntax
```lua
facebook.init([params])
```
### params <sub>required</sub>
_[Table](https://docs.coronalabs.com/api/type/Table.html)._ Contains parameters for the call &mdash; see the next section for details.

## Parameter Reference

The `params` table includes parameters for the call.

### autoLogAppEvents <sub>optional</sub>
_[Boolean](https://docs.coronalabs.com/api/type/Boolean.html)._ Controls the auto logging of basic app events, such as activateApp and deactivateApp. In some cases, you want to only delay the collection of automatically logged events, such as to obtain User consent or fulfill legal obligations. Default is `false`.

### advertiserIdCollection <sub>optional</sub>
_[Boolean](https://docs.coronalabs.com/api/type/Boolean.html)._ Controls the collection of `advertiser_id`. In some cases, you want to delay the collection of `advertiser_id`, such as to obtain User consent or fulfill legal obligations, instead of disabling it. Default is `false`.