---
title: toast
---
# toast.* &mdash; Toast

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Library](https://docs.coronalabs.com/api/type/library.html)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

The Toast plugin shows non-intrusive in-app notification messages for iOS and Android. A must have for any Corona application.
To get access to the plugin, you need to support me on Patreon https://www.patreon.com/lerg

Toasts are not a part of Corona's OpenGL hierarchy, therefore they don't affect your Corona objects in any way. They just display a message and silently disappear.

Supported platforms: iOS 7+ and Android 2.3.3+.

## Screenshots

<center>
<img src="/images/toast/android.png" alt="Android" width="50%">
<br>Android

<img src="/images/toast/ios.png" alt="iOS" width="50%">
<br>iOS
</center>

## Syntax
```lua
local toast = require('plugin.toast')
```
## Functions

#### [toast.show()](/plugin/toast/show)

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
		['plugin.toast'] = spiralcodestudio_plugin('toast')
	}
}
```

## Example

```lua
toast.show('Non-intrusive notification message!')
-- OR --
toast.show('Toast is done!', {duration = 'long', gravity = 'TopCenter', offset = {0, 128}})
```

## Sample Project

A sample project can be found here.

https://github.com/Lerg/plugins-sample-toast