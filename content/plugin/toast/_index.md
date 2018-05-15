---
title: toast
---
# toast.* &mdash; Toast

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Library](https://docs.coronalabs.com/api/type/library.html)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

The [Toast](https://marketplace.coronalabs.com/plugin/toast) plugin shows non-intrusive in-app notification messages for iOS and Android. A must have for any Corona application.

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

First, get the plugin on the [Corona Marketplace](https://marketplace.coronalabs.com/plugin/toast) page.

Add an entry into the `plugins` table of `build.settings`. When added, the build server will integrate the plugin during the build phase.

```lua
	settings = {
		plugins = {
			['plugin.toast'] = {publisherId = 'com.spiralcodestudio'}
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