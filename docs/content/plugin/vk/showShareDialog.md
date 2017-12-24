---
title: showShareDialog
---
# vk.showShareDialog()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function](https://docs.coronalabs.com/api/type/Function.html)

> __Return value__      none

> __See also__          [vk.*](/plugin/vk/)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

Shows a share popup window, which user can use to edit and post a message on his or her VK wall.

## Syntax
```lua
vk.showShareDialog(params)
```
### params <sub>required</sub>
_[Table](https://docs.coronalabs.com/api/type/Table.html)._ Contains parameters for the call &mdash; see the next section for details.

## Parameter Reference

The `params` table includes parameters for the call.

### text <sub>optional</sub>
_[String](https://docs.coronalabs.com/api/type/String.html)._ Message text.

### linkTitle <sub>optional</sub>
_[String](https://docs.coronalabs.com/api/type/String.html)._ Attached link title text.

### link <sub>optional</sub>
_[String](https://docs.coronalabs.com/api/type/String.html)._ Attached link URL.

### imageId <sub>optional</sub>
_[String](https://docs.coronalabs.com/api/type/String.html)._ Attached image VK id.

### image <sub>optional</sub> ~(iOS)~
_[Image](/plugin/vk/type/Image/)._ Upload and attach the specified image file.

### listener <sub>optional</sub>
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._ Listener which receives the [showShareDialog](/plugin/vk/event/showShareDialog/) event.