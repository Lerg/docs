---
title: facebook
---
# facebook.* &mdash; facebook

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Library](https://docs.coronalabs.com/api/type/library.html)
> --------------------- ------------------------------------------------------------------------------------------


## Overview

The [facebook](https://marketplace.coronalabs.com/plugin/facebook) plugin integrates the Facebook SDK version 5.0.1, currently only analytics and deferred applinks are implemented. This plugin is incompatible with the standard `facebook.v4` plugin by Corona Labs.

It is advised to get familiar with official Facebook SDK documentation.

If you need other SDK features to be implemented in this plugin, you can contact me and sponsor the development.

Supported platforms: iOS 8+, Android 4.0.3+.

## Syntax
```lua
local facebook = require('plugin.spiralcode.facebook')  
```
## Functions

#### [facebook.init()](/plugin/facebook/init)

#### [facebook.getDeferredAppLinkData()](/plugin/facebook/getDeferredAppLinkData)

#### [facebook.logEvent()](/plugin/facebook/logEvent)

#### [facebook.logPurchase()](/plugin/facebook/logPurchase)

#### [facebook.setLimitEventAndDataUsage()](/plugin/facebook/setLimitEventAndDataUsage)

## Events

#### [fbapplink](/plugin/facebook/event/fbapplink/)

## Project Settings

To use this plugin, add an entry into the `plugins` table of `build.settings`. When added, the build server will integrate the plugin during the build phase.

```lua
	settings = {
		plugins = {
			['plugin.spiralcode.facebook'] = {
				publisherId = 'com.spiralcodestudio'
			}
		}
	}
```

### iOS
If your app is for iOS, you must also include the following code in build.settings to ensure that the native Facebook app functions properly:
```
settings = {
 
    iphone =
    {
        plist =
        {
            UIApplicationExitsOnSuspend = false,
            FacebookAppID = 'XXXXXXXXXX',  -- Replace XXXXXXXXXX with your Facebook App ID
            CFBundleURLTypes =
            {
                { CFBundleURLSchemes = { 'fbXXXXXXXXXX', } }  -- Replace XXXXXXXXXX with your Facebook App ID
            },
            -- Whitelist Facebook apps
            LSApplicationQueriesSchemes =
            {
                'fb',
                'fbapi',
                'fbauth2',
                'fb-messenger-api',
                'fbshareextension'
            },
        },
    },
}
```
Notice that there are several critical parts which must be specified:

`UIApplicationExitsOnSuspend` — To ensure that Facebook can resume your app properly, you must include `UIApplicationExitsOnSuspend` = false. If you've set this parameter to true for some other reason, you must revert it to false (default).

`FacebookAppID` — Set this key to FacebookAppID = 'XXXXXXXXXX' and replace XXXXXXXXXX with your unique Facebook App ID.

`CFBundleURLTypes` — The CFBundleURLTypes table must be declared exactly as shown and it must include a table named CFBundleURLSchemes. Inside this, include your Facebook App ID and prefix it with fb. Thus, if your App ID is 1234567890, you should specify: `'fb1234567890'`.

`LSApplicationQueriesSchemes` — This table of whitelisted URL schemes ensures that your app and the Facebook SDK run properly together.

### Android
If your app is for Android, you must also include a Facebook App ID in build.settings:
```
settings = 
{
    android =
    {
        facebookAppId = 'XXXXXXXXXX',  -- Replace XXXXXXXXXX with your Facebook App ID
    },
}
```

## Sample Project

A sample project can be found here.

https://github.com/Lerg/plugins-sample-facebook