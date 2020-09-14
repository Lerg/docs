---
title: vibrator
---
# vibrator.* &mdash; Vibrator

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Library](https://docs.coronalabs.com/api/type/library.html)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

The Vibrator plugin provides you a fine control over vibration ability of Android devices and Taptic Engine in Apple's devices. You can control vibration duration, set a pattern and make it repeat indefinitely.
To get access to the plugin, you need to support me on Patreon https://www.patreon.com/lerg

On iOS only iPhone 7 and iPhone 7+ or later are supported.

Supported platforms: Android 2.3.3+, iOS 10+.

## Syntax
```lua
local vibrator = require('plugin.vibrator')
```
## Functions

#### [vibrator.hasVibrator()](/plugin/vibrator/hasVibrator)

#### [vibrator.vibrate()](/plugin/vibrator/vibrate)

#### [vibrator.cancel()](/plugin/vibrator/cancel)

#### [vibrator.newHaptic()](/plugin/vibrator/newHaptic)

## Types

#### [Haptic](/plugin/vibrator/type/Haptic)

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
		['plugin.vibrator'] = spiralcodestudio_plugin('vibrator')
	}
}
```

## Example

```lua
vibrator.vibrate(1000)
-- OR --
vibrator.vibrate({100, 500,  200, 250}, 1)
```

## Sample Project

A sample project can be found here.

https://github.com/Lerg/plugins-sample-vibrator