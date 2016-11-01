# vk.* &mdash; VK

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Library](https://docs.coronalabs.com/api/type/library.html)
> --------------------- ------------------------------------------------------------------------------------------


## Overview

The [VK](https://marketplace.coronalabs.com/plugin/vk) plugin provides access to VK.com Social Network.

Supported platforms: iOS 6+, Android 2.3.3+.

The latest version requires Corona 2016.2646 or later.

## Syntax
```lua
local vk = require('plugin.vk')  
```
## Functions

#### [vk.enableDebug()](/plugin/vk/enableDebug.md)

#### [vk.init()](/plugin/vk/init.md)

#### [vk.login()](/plugin/vk/login.md)

#### [vk.logout()](/plugin/vk/logout.md)

#### [vk.isLoggedIn()](/plugin/vk/isLoggedIn.md)

#### [vk.getUserId()](/plugin/vk/getUserId.md)

#### [vk.getAccessToken()](/plugin/vk/getAccessToken.md)

#### [vk.request()](/plugin/vk/request.md)

#### [vk.showShareDialog()](/plugin/vk/showShareDialog.md)

## Events

#### [login](/plugin/vk/event/login/index.md)

#### [request](/plugin/vk/event/request/index.md)

#### [showShareDialog](/plugin/vk/event/showShareDialog/index.md)

## Types

#### [AccessToken](/plugin/vk/type/AccessToken/index.md)

#### [Image](/plugin/vk/type/Image/index.md)

## Project Settings

To use this plugin, add an entry into the `plugins` table of `build.settings`. When added, the build server will integrate the plugin during the build phase.

```lua
	settings = {
		plugins = {
			['plugin.vk'] = {
				publisherId = 'com.spiralcodestudio'
			}
		}
	}
```
