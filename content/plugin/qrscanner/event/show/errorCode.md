---
title: errorCode
---
# event.errorCode

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Number](https://docs.coronalabs.com/api/type/Number.html)

> __Event__             [show](/plugin/qrscanner/event/show/)

> __See also__          [show](/plugin/qrscanner/event/show/)
>						[qrscanner.*](/plugin/qrscanner/)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

Unique error code, present when [event.isError](/plugin/qrscanner/event/show/isError) is `true`, `nil` otherwise.

Possible values:

* `'cancelled'`
* `'no_camera'`
* `'permission_denied'`
* `'permission_denied_should_never_ask_again'`
* `'unknown'`