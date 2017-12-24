---
title: init
---
# vk.init()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function](https://docs.coronalabs.com/api/type/Function.html)

> __Return value__      none

> __See also__          [vk.*](/plugin/vk/)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

Must be callled before you can use other functions of the plugin.

## Syntax
```lua
vk.init(appId, [permissions])
```
### appId <sub>required</sub>
_[String](https://docs.coronalabs.com/api/type/String.html)._ VK application ID that you get on [https://vk.com/dev](https://vk.com/dev).

### permissions <sub>optional</sub>
_[Array](https://docs.coronalabs.com/api/type/Array.html)._ Array of [strings](https://docs.coronalabs.com/api/type/String.html). Specify VK permissions that your application needs.

## Available permissions

`'notify'`, `'friends'`, `'photos'`, `'audio'`, `'video'`, `'docs'`, `'notes'`, `'pages'`, `'status'`, `'wall'`, `'groups'`, `'messages'`, `'notifications'`, `'stats'`, `'ads'`, `'offline'`, `'direct'`, `'email'`.

`'email'` permission is only granted to special applications that have an agreement with VK company.
