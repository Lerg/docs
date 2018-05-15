---
title: errorCode
---
# event.errorCode

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Number](https://docs.coronalabs.com/api/type/Number.html)

> __Event__             [writeTag](/plugin/nfc/event/writeTag/)

> __See also__          [writeTag](/plugin/nfc/event/writeTag/)
>						[nfc.*](/plugin/nfc/)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

Unique error code, present when [event.isError](/plugin/nfc/event/writeTag/isError) is `true`, `nil` otherwise.

Possible values:

- `'not writable'`
- `'no space'`
- `'write fail'`
- `'bad format'`
- `'unknown'`
- `'no records'`
- `'no tag'`