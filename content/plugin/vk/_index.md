---
title: vk
---
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

#### [vk.enableDebug()](/plugin/vk/enableDebug)

#### [vk.init()](/plugin/vk/init)

#### [vk.login()](/plugin/vk/login)

#### [vk.logout()](/plugin/vk/logout)

#### [vk.isLoggedIn()](/plugin/vk/isLoggedIn)

#### [vk.getUserId()](/plugin/vk/getUserId)

#### [vk.getAccessToken()](/plugin/vk/getAccessToken)

#### [vk.request()](/plugin/vk/request)

#### [vk.showShareDialog()](/plugin/vk/showShareDialog)

## Events

#### [login](/plugin/vk/event/login/)

#### [request](/plugin/vk/event/request/)

#### [showShareDialog](/plugin/vk/event/showShareDialog/)

## Types

#### [AccessToken](/plugin/vk/type/AccessToken/)

#### [Image](/plugin/vk/type/Image/)

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

In VK dev console (https://vk.com/dev) for your app you have to:
- Set "Install Application" setting to "Required".
- Add all used permissions to "Access Rights".
- Add "App Bundle ID for iOS".
- Add "Package name for Android"
- Set "Main activity for Android" to "com.ansca.corona.CoronaActivity"
- Add "Signing certificate fingerprint for Android"

## Sample Project

A sample project can be found here.

https://github.com/Lerg/plugins-sample-vk