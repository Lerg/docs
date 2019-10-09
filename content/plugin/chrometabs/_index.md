---
title: chrometabs
---
# chrometabs.* &mdash; chrometabs

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Library](https://docs.coronalabs.com/api/type/library.html)
> --------------------- ------------------------------------------------------------------------------------------


## Overview

The [chrometabs](https://marketplace.coronalabs.com/plugin/chrometabs) plugin adds support for Chrome Custom Tabs - a better replacement for WebView on Android.

Supported platforms: Android 7.0+.

## Syntax
```lua
local chrometabs = require('plugin.chrometabs')
```
## Functions

#### [chrometabs.init()](/plugin/chrometabs/init)

#### [chrometabs.show()](/plugin/chrometabs/show)

#### [chrometabs.warmup()](/plugin/chrometabs/warmup)

#### [chrometabs.newSession()](/plugin/chrometabs/newSession)

#### [chrometabs.mayLaunchUrl()](/plugin/chrometabs/mayLaunchUrl)

## Events

#### [chrometabs](/plugin/chrometabs/event/chrometabs/)

## Project Settings

To use this plugin, add an entry into the `plugins` table of `build.settings`. When added, the build server will integrate the plugin during the build phase.

```lua
	settings = {
		plugins = {
			['plugin.chrometabs'] = {
				publisherId = 'com.spiralcodestudio'
			}
		}
	}
```

## Sample Project

A sample project can be found here.

https://github.com/Lerg/plugins-sample-chrometabs