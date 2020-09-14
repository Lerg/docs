---
title: flashlight
---
# flashlight.* &mdash; Flashlight

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Library](https://docs.coronalabs.com/api/type/library.html)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

The Flashlight plugin provides access to the flash LED light source, which can be used as a torch.
To get access to the plugin, you need to support me on Patreon https://www.patreon.com/lerg

Supported platforms: iOS 6+ and Android 3.0+.

## Syntax
```lua
local flashlight = require('plugin.flashlight')
```
## Functions

#### [flashlight.on()](/plugin/flashlight/on)

#### [flashlight.off()](/plugin/flashlight/off)

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
		['plugin.flashlight'] = spiralcodestudio_plugin('flashlight')
	}
}
```

## Example

```lua
local flashlight = require('plugin.flashlight')

-- -- --

flashlight.on()
```

## Sample Project

A sample project can be found here.

https://github.com/Lerg/plugins-sample-flashlight
