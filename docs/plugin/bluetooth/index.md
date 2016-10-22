# bluetooth.* &mdash; Bluetooth

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Library][api.type.library]
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          Bluetooth, wireless, bt
> __Platforms__         Android
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

#### [bluetooth.isActive](/plugin.bluetooth.isActive.md)

#### [bluetooth.isScanning](/plugin.bluetooth.isScanning.md)

#### [bluetooth.isMultipleAdvertisementSupported](/plugin.bluetooth.isMultipleAdvertisementSupported.md)

#### [bluetooth.isOffloadedFilteringSupported](/plugin.bluetooth.isOffloadedFilteringSupported.md)

#### [bluetooth.isOffloadedScanBatchingSupported](/plugin.bluetooth.isOffloadedScanBatchingSupported.md)

## Functions

#### [bluetooth.init()](/plugin.bluetooth.init.md)

#### [bluetooth.setName()](/plugin.bluetooth.setName.md)

#### [bluetooth.startScan()](/plugin.bluetooth.startScan.md)

#### [bluetooth.stopScan()](/plugin.bluetooth.stopScan.md)

#### [bluetooth.connect()](/plugin.bluetooth.connect.md)

#### [bluetooth.disconnect()](/plugin.bluetooth.disconnect.md)

#### [bluetooth.newServer()](/plugin.bluetooth.newServer.md)

#### [bluetooth.startAdvertising()](/plugin.bluetooth.startAdvertising.md)

#### [bluetooth.stopAdvertising()](/plugin.bluetooth.stopAdvertising.md)

## Events

#### [init](/plugin.bluetooth.event.init.md)

## Types

#### [Gatt](/plugin.bluetooth.type.Gatt.md)

#### [Characteristic](/plugin.bluetooth.type.Characteristic.md)

#### [Descriptor](/plugin.bluetooth.type.Descriptor.md)

#### [Server](/plugin.bluetooth.type.Server.md)

#### [Service](/plugin.bluetooth.type.Service.md)

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

## Support

* [Corona Forums](http://forums.coronalabs.com/forum/)
