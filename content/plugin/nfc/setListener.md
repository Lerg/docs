---
title: setListener
---
# nfc.setListener()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function](https://docs.coronalabs.com/api/type/Function.html)

> __Return value__      none

> __See also__          [nfc.*](/plugin/nfc/)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

Sets a listener to recieve reading TAGs [nfc](/plugin/nfc/event/nfc/) events. If there is a pending NFC event, the listener will be invoked right away. Pending event can occur when your app is launched due to an NFC device being discovered.

## Syntax
```lua
nfc.setListener(listener)
```