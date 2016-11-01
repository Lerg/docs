# vk.showShareDialog()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function](https://docs.coronalabs.com/api/type/Function.html)

> __Return value__      none

> __See also__          [vk.*](/plugin/vk/index.md)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

Shows a share popup window, which user can use to edit and post a message on his or her VK wall.

## Syntax
```lua
vk.showShareDialog(params)
```
### params ~^(required)^~
_[Table](https://docs.coronalabs.com/api/type/Table.html)._ Contains parameters for the call &mdash; see the next section for details.

## Parameter Reference

The `params` table includes parameters for the call.

### text ~^(optional)^~
_[String](https://docs.coronalabs.com/api/type/String.html)._ Message text.

### linkTitle ~^(optional)^~
_[String](https://docs.coronalabs.com/api/type/String.html)._ Attached link title text.

### link ~^(optional)^~
_[String](https://docs.coronalabs.com/api/type/String.html)._ Attached link URL.

### imageId ~^(optional)^~
_[String](https://docs.coronalabs.com/api/type/String.html)._ Attached image VK id.

### image ~^(optional)^~ ~(iOS)~
_[Image](/plugin/vk/type/Image/index.md)._ Upload and attach the specified image file.

### listener ~^(optional)^~
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._ Listener which receives the [showShareDialog](/plugin/vk/event/showShareDialog/index.md) event.