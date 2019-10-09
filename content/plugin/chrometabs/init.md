---
title: init
---
# chrometabs.init()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function](https://docs.coronalabs.com/api/type/Function.html)

> __Return value__      none

> __See also__          [chrometabs.*](/plugin/chrometabs/)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

The plugin does not require initialization, you can invoke [chrometabs.show()](/plugin/chrometabs/show) straight away, but initialization helps preloading assets and reduces showing delay.

## Syntax
```lua
chrometabs.init([params])
```
### params <sub>required</sub>
_[Table](https://docs.coronalabs.com/api/type/Table.html)._ Contains parameters for the call &mdash; see the next section for details.

## Parameter Reference

The `params` table includes parameters for the call.

### listener <sub>optional</sub>
_[Boolean](https://docs.coronalabs.com/api/type/Listener.html)._ Listener that receives [chrometabs](/plugin/chrometabs/event/chrometabs/) event. Use it to know when the plugin is ready to invoke [chrometabs.warmup()](/plugin/chrometabs/warmup) or [chrometabs.newSession()](/plugin/chrometabs/newSession) calls.