---
title: qrscanner
---
# qrscanner.* &mdash; QR Scanner

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Library](https://docs.coronalabs.com/api/type/library.html)
> --------------------- ------------------------------------------------------------------------------------------


## Overview

The QR Scanner plugin lets you scan QR Codes and other barcodes in your Solar2D app. To get access to the plugin, you need to support me on Patreon https://www.patreon.com/lerg

Supported platforms: iOS 8+, Android 4.1+.

The latest version requires Solar2D 2020.3610 or later.

## Screenshots

<center>
<img src="/images/qrscanner/android.jpg" alt="Android" width="50%">
<br>Android

<img src="/images/qrscanner/ios.jpg" alt="iOS" width="50%">
<br>iOS

<img src="/images/qrscanner/custom_overlay.png" alt="Custom Overlay" width="50%">
<br>Custom Overlay
</center>

## Syntax
```lua
local qrscanner = require('plugin.qrscanner')  
```
## Functions

#### [qrscanner.enableDebug()](/plugin/qrscanner/enableDebug)

#### [qrscanner.show()](/plugin/qrscanner/show)

## Events

#### [show](/plugin/qrscanner/event/show/)

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
	android = {
		minSdkVersion = '16'
	},
	plugins = {
		['plugin.qrscanner'] = spiralcodestudio_plugin('qrscanner')
	}
}
```

Also for iOS 10 support you need to add a description for the camera permission. Add to your build.settings inside iphone->plist section.

```lua
NSPhotoLibraryUsageDescription = "Not used in this app",  
NSCameraUsageDescription = "Used to scan QR codes and barcodes"  
```

## Sample Project

A sample project can be found here.

https://github.com/Lerg/plugins-sample-qrscanner