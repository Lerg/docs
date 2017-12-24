---
title: request
---
# vk.request()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function](https://docs.coronalabs.com/api/type/Function.html)

> __Return value__      none

> __See also__          [vk.*](/plugin/vk/)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

Queries VK server with the specified request and delivers it's response.

## Syntax
```lua
vk.request(method, params, [listener])
```
### method <sub>required</sub>
_[String](https://docs.coronalabs.com/api/type/String.html)._ VK API method. See the [list of methods](https://vk.com/dev/methods).

### params <sub>required</sub>
_[Table](https://docs.coronalabs.com/api/type/Table.html)._ Table of [strings](https://docs.coronalabs.com/api/type/String.html) keys and various values to be submitted with the request. Each method has it's own set of valid params.

### listener <sub>optional</sub>
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._ Listener which receives the [request](/plugin/vk/event/request/) event.