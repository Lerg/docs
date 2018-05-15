---
title: mousecursor
---
# mousecursor.* &mdash; Mouse Cursor

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Library](https://docs.coronalabs.com/api/type/library.html)
> --------------------- ------------------------------------------------------------------------------------------


## Overview

The [Mouse Cursor](https://marketplace.coronalabs.com/plugin/mousecursor) plugin can change mouse cursor image to either one of the standard system choices or to a custom image using native system API (not Corona display object).

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

```lua
	settings = {
		plugins = {
			['plugin.mousecursor'] = {publisherId = 'com.spiralcodestudio'}
		}
	}
```

## Sample Project

A sample project can be found here.

https://github.com/Lerg/plugins-sample-mousecursor