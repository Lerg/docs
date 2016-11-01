# vk.login()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function](https://docs.coronalabs.com/api/type/Function.html)

> __Return value__      none

> __See also__          [vk.*](/plugin/vk/index.md)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

User authentication. Uses official VK application if available.

## Syntax
```lua
vk.login(params)
```
### params ~^(required)^~
_[Table](https://docs.coronalabs.com/api/type/Table.html)._ Contains parameters for the call &mdash; see the next section for details.

## Parameter Reference

The `params` table includes parameters for the call.

### userInitiated ~^(optional)^~
_[Boolean](https://docs.coronalabs.com/api/type/Boolean.html)._ If not specified or `false` the user won't be promted with a login window. Use it to silently authorize the user at the start of your application if he or she has logged in before. Specify `true` if you want the regular login flow, e.g. via a "Log in" button.

### inApp ~^(optional)^~ ~(iOS)~
_[Boolean](https://docs.coronalabs.com/api/type/Boolean.html)._ The plugin uses official VK app if available for authentication. Otherwise, if `true` on iOS a WebView will be used, if `false` or not specified - full Safari browser.

### listener ~^(optional)^~
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._ Listener which receives the [login](/plugin/vk/event/login/index.md) event.