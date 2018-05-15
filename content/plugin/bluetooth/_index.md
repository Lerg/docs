---
title: bluetooth
---
# bluetooth.* &mdash; Bluetooth

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Library](https://docs.coronalabs.com/api/type/library.html)



> --------------------- ------------------------------------------------------------------------------------------


## Overview

The [Bluetooth](https://marketplace.coronalabs.com/plugin/bluetooth) plugin enables Bluetooth communication.

<div class="guide-notebox">
<div class="notebox-title">Notes</div>

* This plugin is currently in __beta__. APIs and project configuration are subject to change without notice during this time.

* This plugin is currently only available for Android, but iOS support is in development.

</div>


## Syntax

	local bluetooth = require( "plugin.bluetooth" )

## Properties

#### [bluetooth.isActive](/plugin/bluetooth/isActive)

#### [bluetooth.isScanning](/plugin/bluetooth/isScanning)

#### [bluetooth.isMultipleAdvertisementSupported](/plugin/bluetooth/isMultipleAdvertisementSupported)

#### [bluetooth.isOffloadedFilteringSupported](/plugin/bluetooth/isOffloadedFilteringSupported)

#### [bluetooth.isOffloadedScanBatchingSupported](/plugin/bluetooth/isOffloadedScanBatchingSupported)

## Functions

#### [bluetooth.init()](/plugin/bluetooth/init)

#### [bluetooth.setName()](/plugin/bluetooth/setName)

#### [bluetooth.startScan()](/plugin/bluetooth/startScan)

#### [bluetooth.stopScan()](/plugin/bluetooth/stopScan)

#### [bluetooth.connect()](/plugin/bluetooth/connect)

#### [bluetooth.disconnect()](/plugin/bluetooth/disconnect)

#### [bluetooth.newServer()](/plugin/bluetooth/newServer)

#### [bluetooth.startAdvertising()](/plugin/bluetooth/startAdvertising)

#### [bluetooth.stopAdvertising()](/plugin/bluetooth/stopAdvertising)

## Events

#### [advertising](/plugin/bluetooth/event/advertising/)

#### [init](/plugin/bluetooth/event/init/)

#### [scan](/plugin/bluetooth/event/scan/)

## Types

#### [Gatt](/plugin/bluetooth/type/Gatt/)

#### [Characteristic](/plugin/bluetooth/type/Characteristic/)

#### [Descriptor](/plugin/bluetooth/type/Descriptor/)

#### [Server](/plugin/bluetooth/type/Server/)

#### [Service](/plugin/bluetooth/type/Service/)

<a id="settings"></a>

## Project Settings

To use this plugin, add an entry into the `plugins` table of `build.settings`. When added, the build server will integrate the plugin during the build phase.

	settings = {
		plugins = {
			["plugin.bluetooth"] = {
				publisherId = "com.spiralcodestudio",
				supportedPlatforms = { android = true }
			}
		}
	}

## Sample Project

A sample project can be found here.

https://github.com/Lerg/plugins-sample-bluetooth