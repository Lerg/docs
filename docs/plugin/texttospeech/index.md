# texttospeech.* &mdash; TextToSpeech

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Library](https://docs.coronalabs.com/api/type/library.html)
> --------------------- ------------------------------------------------------------------------------------------


## Overview

The [TextToSpeech](https://marketplace.coronalabs.com/plugin/texttospeech) plugin enables your applications speak various text in various languages. You can control pitch, rate and volume.

Supported platforms: iOS 7+, Android 4.0.3+, tvOS 7+, macOS 10.3+. Some features require Android 4.0+ and Android 5.0+.

The latest version requires Corona 2016.2979 or later.

## Syntax

	local texttospeech = require('plugin.texttospeech')  

## Functions

#### [texttospeech.enableDebug()](/plugin/texttospeech/enableDebug.md)

#### [texttospeech.init()](/plugin/texttospeech/init.md)

#### [texttospeech.getLanguagesAndVoices()](/plugin/texttospeech/getLanguagesAndVoices.md)

#### [texttospeech.speak()](/plugin/texttospeech/speak.md)

#### [texttospeech.isSpeaking()](/plugin/texttospeech/isSpeaking.md)

#### [texttospeech.stop()](/plugin/texttospeech/stop.md)

#### [texttospeech.pause()](/plugin/texttospeech/pause.md)

#### [texttospeech.continue()](/plugin/texttospeech/continue.md)

## Events

#### [init](/plugin/texttospeech/event/init/index.md)

#### [getLanguagesAndVoices](/plugin/texttospeech/event/getLanguagesAndVoices/index.md)

#### [onStart](/plugin/texttospeech/event/onStart/index.md)

#### [onProgress](/plugin/texttospeech/event/onProgress/index.md)

#### [onComplete](/plugin/texttospeech/event/onComplete/index.md)

#### [onPause](/plugin/texttospeech/event/onPause/index.md)

#### [onContinue](/plugin/texttospeech/event/onContinue/index.md)

## Project Settings

To use this plugin, add an entry into the `plugins` table of `build.settings`. When added, the build server will integrate the plugin during the build phase.

```lua
	settings = {
		plugins = {
			['plugin.texttospeech'] = {
				publisherId = 'com.spiralcodestudio'
			}
		}
	}
```
