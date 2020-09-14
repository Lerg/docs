---
title: texttospeech
---
# texttospeech.* &mdash; TextToSpeech

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Library](https://docs.coronalabs.com/api/type/library.html)
> --------------------- ------------------------------------------------------------------------------------------


## Overview

The TextToSpeech plugin enables your applications speak various text in various languages. You can control pitch, rate and volume.
To get access to the plugin, you need to support me on Patreon https://www.patreon.com/lerg

Supported platforms: iOS 7+, Android 4.0.3+, tvOS 7+, macOS 10.3+. Some features require Android 4.0+ and Android 5.0+.

The latest version requires Corona 2016.2979 or later.

## Syntax
```lua
local texttospeech = require('plugin.texttospeech')  
```
## Functions

#### [texttospeech.enableDebug()](/plugin/texttospeech/enableDebug)

#### [texttospeech.init()](/plugin/texttospeech/init)

#### [texttospeech.getLanguagesAndVoices()](/plugin/texttospeech/getLanguagesAndVoices)

#### [texttospeech.speak()](/plugin/texttospeech/speak)

#### [texttospeech.isSpeaking()](/plugin/texttospeech/isSpeaking)

#### [texttospeech.stop()](/plugin/texttospeech/stop)

#### [texttospeech.pause()](/plugin/texttospeech/pause)

#### [texttospeech.continue()](/plugin/texttospeech/continue)

## Events

#### [init](/plugin/texttospeech/event/init/)

#### [getLanguagesAndVoices](/plugin/texttospeech/event/getLanguagesAndVoices/)

#### [onStart](/plugin/texttospeech/event/onStart/)

#### [onProgress](/plugin/texttospeech/event/onProgress/)

#### [onComplete](/plugin/texttospeech/event/onComplete/)

#### [onPause](/plugin/texttospeech/event/onPause/)

#### [onContinue](/plugin/texttospeech/event/onContinue/)

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
	plugins = {
		['plugin.texttospeech'] = spiralcodestudio_plugin('texttospeech')
	}
}
```

## Sample Project

A sample project can be found here.

https://github.com/Lerg/plugins-sample-texttospeech