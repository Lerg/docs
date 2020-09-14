---
title: vk
---
# vk.* &mdash; VK

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Library](https://docs.coronalabs.com/api/type/library.html)
> --------------------- ------------------------------------------------------------------------------------------


## Overview

The VK plugin provides access to VK.com Social Network.
To get access to the plugin, you need to support me on Patreon https://www.patreon.com/lerg

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

You also need to add a special function at the top of the `build.settings` file and provide your Patreon email and an access key. The access key you get when you become a patron.

```lua
local spiralcodestudio_patreon_email = 'YOUR_EMAIL'
local spiralcodestudio_key = 'YOUR_ACCESS_KEY'

local function spiralcodestudio_plugin(name)
	local plugin = {publisherId = 'com.spiralcodestudio', supportedPlatforms = {}}
	local platforms = {'android', 'appletvos', 'appletvsimulator', 'iphone', 'iphone-sim', 'mac-sim', 'win32-sim'}
	for i = 1, #platforms do
		local platform = platforms[i]
		plugin.supportedPlatforms[platform] = {url = 'https://build.spiralcodestudio.com/' .. spiralcodestudio_patreon_email .. '/' .. spiralcodestudio_key .. '/solar2d/' .. name .. '_' .. platform .. '.tgz'}
	end
	return plugin
end

settings = {
	plugins = {
		['plugin.vk'] = spiralcodestudio_plugin('vk')
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