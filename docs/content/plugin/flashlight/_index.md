---
title: flashlight
---
# flashlight.* &mdash; Flashlight

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Library](https://docs.coronalabs.com/api/type/library.html)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

The [Flashlight](https://marketplace.coronalabs.com/plugin/flashlight) plugin provides access to the flash LED light source, which can be used as a torch.

Supported platforms: iOS 6+ and Android 3.0+.

## Syntax
```lua
local flashlight = require('plugin.flashlight')
```
## Functions

#### [flashlight.on()](/plugin/flashlight/on)

#### [flashlight.off()](/plugin/flashlight/off)

## Project Settings

First, get the plugin on the [Corona Marketplace](https://marketplace.coronalabs.com/plugin/flashlight) page.

Add an entry into the `plugins` table of `build.settings`. When added, the build server will integrate the plugin during the build phase.

```lua
	settings = {
		plugins = {
			['plugin.flashlight'] = {publisherId = 'com.spiralcodestudio'}
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
