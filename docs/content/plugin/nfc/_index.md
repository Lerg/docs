---
title: nfc
---
# nfc.* &mdash; NFC

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Library](https://docs.coronalabs.com/api/type/library.html)
> --------------------- ------------------------------------------------------------------------------------------


## Overview

The [NFC](https://marketplace.coronalabs.com/plugin/nfc) plugin enables your application to read NFC tags. NFC stands for Near Field Communication. At the moment the plugin only supports NDEF tags, but in the future based on your feedback, the plugin can be enhaced.

Supported platforms: Android 4.0+. Some features require Android 4.1+ or 6.0+. iOS 11+.

On iOS only iPhone 7 and later have capability to read NFC tags. And only NDEF tags are supported.

The latest version requires Corona 2016.3068 or later.

## Syntax
```lua
local nfc = require('plugin.nfc')  
```
## Functions

#### [nfc.enableDebug()](/plugin/nfc/enableDebug)

#### [nfc.init()](/plugin/nfc/init)

#### [nfc.show()](/plugin/nfc/show)

#### [nfc.close()](/plugin/nfc/close)

#### [nfc.setListener()](/plugin/nfc/setListener)

#### [nfc.removeListener()](/plugin/nfc/removeListener)

#### [nfc.writeTag()](/plugin/nfc/writeTag)

#### [nfc.releaseTag()](/plugin/nfc/releaseTag)

#### [nfc.beam()](/plugin/nfc/beam)

#### [nfc.cancelBeam()](/plugin/nfc/cancelBeam)

## Events

#### [init](/plugin/nfc/event/init/)

#### [nfc](/plugin/nfc/event/nfc/)

#### [writeTag](/plugin/nfc/event/writeTag/)

#### [beam](/plugin/nfc/event/beam/)

## Types

#### [NdefMessage](/plugin/nfc/type/NdefMessage/)

## Project Settings

To use this plugin, add an entry into the `plugins` table of `build.settings`. When added, the build server will integrate the plugin during the build phase.
```lua
settings = {
    plugins = {
        ['plugin.nfc'] = {
            publisherId = 'com.spiralcodestudio'
        }
    }
}
```

As per Apple requirement, you also have to add an NFC usage description. And a special entitlement record.
```lua
settings = {
    iphone = {
        plist = {
            NFCReaderUsageDescription = 'Testing NFC'
        },
        entitlements = {
			['com.apple.developer.nfc.readersession.formats'] = {'NDEF'}
		}
    }
}
```

You can replace `'Testing NFC'` with your own description.

And don't forget to enable "NFC Tag Reading" service for your iOS App Id on Apple's developer portal.

If you want your Android application to be able to launch when an NFC device is discovered, you should add a specific intent filter into build.settings. You can read more on that and about NFC in general [here](http://developer.android.com/guide/topics/connectivity/nfc/nfc.html).

For example a broad intent filter with low priority can look like this:
```lua
settings = {
	android = {
        intentFilters = {
            {
                actions = {'android.nfc.action.NDEF_DISCOVERED'},
                categories = {'android.intent.category.DEFAULT'}
            },{
                actions = {'android.nfc.action.TAG_DISCOVERED'},
                categories = {'android.intent.category.DEFAULT'}
            }
        }
    }
}
```
A narrower and hence higher priority intent filter that only wants NDEF tags with `text/plain` mime type can look like this:
```lua
settings = {
	android = {
        intentFilters = {
            {
                actions = {'android.nfc.action.NDEF_DISCOVERED'},
                categories = {'android.intent.category.DEFAULT'},
                data = {mimeType = 'text/plain'}
            }
        }
    }
}
```

You don't need to specify any extra Android permissions.

When you want to use the plugin, require it, init it and set a listener.
```lua
local nfc = require('plugin.nfc')  
nfc.init(function(event)  
    print('Init event:', json.prettify(event))
end))

nfc.setListener(function(event)  
    print('NFC event:', json.prettify(event))
end))
```

On iOS you also have to call `nfc.show()` to open NFC reading dialog.
```lua
nfc.show{message = 'Place an NDEF tag.'}
```

## Sample Project

A sample project can be found here.

https://github.com/Lerg/plugins-sample-nfc