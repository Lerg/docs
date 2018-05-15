---
title: vibrator
---
# vibrator.* &mdash; Vibrator

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Library](https://docs.coronalabs.com/api/type/library.html)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

The [Vibrator](https://marketplace.coronalabs.com/plugin/vibrator) plugin provides you a fine control over vibration ability of Android devices and Taptic Engine in Apple's devices. You can control vibration duration, set a pattern and make it repeat indefinitely.

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

First, get the plugin on the [Corona Marketplace](https://marketplace.coronalabs.com/plugin/vibrator) page.

Add an entry into the `plugins` table of `build.settings`. When added, the build server will integrate the plugin during the build phase.

```lua
	settings = {
		plugins = {
			['plugin.vibrator'] = {publisherId = 'com.spiralcodestudio'}
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