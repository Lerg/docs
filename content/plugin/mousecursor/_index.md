---
title: mousecursor
---
# mousecursor.* &mdash; Mouse Cursor

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Library](https://docs.coronalabs.com/api/type/library.html)
> --------------------- ------------------------------------------------------------------------------------------


## Overview

The Mouse Cursor plugin can change mouse cursor image to either one of the standard system choices or to a custom image using native system API (not Corona display object).
To get access to the plugin, you need to support me on Patreon https://www.patreon.com/lerg

This is a must have plugin for any desktop game, if a display object is used as a mouse cursor it lags on many systems making playing the game uncomfortable. System cursors in this plugin don't have such problem. 

Supported platforms: macOS 10.3+. Windows XP+.

The latest version requires Corona 2016.2906 or later.

## Syntax
```lua
local mousecursor = require('plugin.mousecursor')  
```
## Functions

#### [mousecursor.newCursor()](/plugin/mousecursor/newCursor)

#### [mousecursor.show()](/plugin/mousecursor/show)

#### [mousecursor.hide()](/plugin/mousecursor/hide)

#### [mousecursor.enableDebug()](/plugin/mousecursor/enableDebug)

## Types

#### [Cursor](/plugin/mousecursor/type/Cursor/)

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
		['plugin.mousecursor'] = spiralcodestudio_plugin('mousecursor')
	}
}
```

## Sample Project

A sample project can be found here.

https://github.com/Lerg/plugins-sample-mousecursor