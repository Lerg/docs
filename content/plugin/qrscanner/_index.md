---
title: qrscanner
---
# qrscanner.* &mdash; QR Scanner

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Library](https://docs.coronalabs.com/api/type/library.html)
> --------------------- ------------------------------------------------------------------------------------------


## Overview

The [QR Scanner](https://marketplace.coronalabs.com/plugin/qr-scanner) plugin lets you scan QR Codes and other barcodes in your Corona app.

Supported platforms: iOS 8+, Android 4.0.3+.

The latest version requires Corona 2017.3068 or later.

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

```lua
	settings = {
		plugins = {
			['plugin.qrscanner'] = {
				publisherId = 'com.spiralcodestudio'
			}
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