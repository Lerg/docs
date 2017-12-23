# nfc.* &mdash; NFC

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Library](https://docs.coronalabs.com/api/type/library.html)
> --------------------- ------------------------------------------------------------------------------------------


## Overview

The [NFC](https://marketplace.coronalabs.com/plugin/nfc) plugin enables your application to read NFC tags. NFC stands for Near Field Communication. At the moment the plugin only supports reading NDEF tags, but in the future based on your feedback, the plugin can be enhaced.

Supported platforms: Android 4.0+. Some features require Android 4.1+ or 6.0+. 
This plugin is not available on iOS yet, Apple will introduce NFC support in iOS 11.

The latest version requires Corona 2016.3068 or later.

## Syntax
```lua
local nfc = require('plugin.nfc')  
```
## Functions

#### [nfc.enableDebug()](/plugin/nfc/enableDebug.md)

#### [nfc.init()](/plugin/nfc/init.md)

#### [nfc.setListener()](/plugin/nfc/setListener.md)

#### [nfc.removeListener()](/plugin/nfc/removeListener.md)

#### [nfc.writeTag()](/plugin/nfc/writeTag.md)

#### [nfc.releaseTag()](/plugin/nfc/releaseTag.md)

#### [nfc.beam()](/plugin/nfc/beam.md)

#### [nfc.cancelBeam()](/plugin/nfc/cancelBeam.md)

## Events

#### [init](/plugin/nfc/event/init/index.md)

#### [nfc](/plugin/nfc/event/nfc/index.md)

#### [writeTag](/plugin/nfc/event/writeTag/index.md)

#### [beam](/plugin/nfc/event/beam/index.md)

## Types

#### [NdefMessage](/plugin/nfc/type/NdefMessage/index.md)

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

If you want your application to be able to launch when an NFC device is discovered, you should add a specific intent filter into build.settings. You can read more on that and about NFC in general [here](http://developer.android.com/guide/topics/connectivity/nfc/nfc.html).

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

You don't need to specify any extra permissions.

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