# texttospeech.speak()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function](https://docs.coronalabs.com/api/type/Function.html)

> __Return value__      none

> __See also__          [texttospeech.*](/plugin/texttospeech/index.md)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

Generates and plays the speech. This process is not instant and it will take some time before you actually hear the sound.

## Syntax
```lua
texttospeech.speak(text, [params])
```
### text ~^(required)^~
_[String](https://docs.coronalabs.com/api/type/String.html)._ The text to be spoken by a speech engine.

### params ~^(optional)^~
_[Table](https://docs.coronalabs.com/api/type/Table.html)._ Contains parameters for the call &mdash; see the next section for details.

## Parameter Reference

The `params` table includes parameters for the call.

### language ~^(optional)^~
_[String](https://docs.coronalabs.com/api/type/String.html)._ Set the language to be used, values can be `'ru-RU'`, `'fr-FR'` or other. Default is `'en-US'`. See [texttospeech.getLanguagesAndVoices()](/plugin/texttospeech/getLanguagesAndVoices.md) for the list of available languages.

### voice ~^(optional)^~
_[String](https://docs.coronalabs.com/api/type/String.html)._ Set the voice to be used. Default value is specific to the platform and the engine. See [texttospeech.getLanguagesAndVoices()](/plugin/texttospeech/getLanguagesAndVoices.md) for the list of available voices.

### pitch ~^(optional)^~
_[Float](/type/Float/index.md)._ Set the pitch of the voice, value from `0.5` to `2.0`. Default is `1.0`.

### rate ~^(optional)^~
_[Float](/type/Float/index.md)._ Set the speech rate (speed), value from `0.5` to `2.0`, default is `1.0`. On iOS, tvOS and macOS limits are not known.

### volume ~^(optional)^~
_[Float](/type/Float/index.md)._ Set the volume of the speech, value from `0.0` to `1.0`. Default is `1.0`.

### id ~^(optional)^~
_[String](https://docs.coronalabs.com/api/type/String.html)._ Speech identifier. If supplied, it will be passed to the corresponding listeners. Default value is a random numeric string.

### filename ~^(optional)^~ ~(Android, macOS)~
_[String](https://docs.coronalabs.com/api/type/String.html)._ If supplied, the generated speech will be written into a file instead of being played. WAV on Android, AIFF on macOS.

### baseDir ~^(optional)^~ ~(Android, macOS)~
_[Constant](https://docs.coronalabs.com/api/type/Constant.html)._ The base directory for the `filename`. Default is `system.TemporaryDirectory`.

### onStart ~^(optional)^~
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._ Listener which receives the [onStart](/plugin/texttospeech/event/onStart/index.md) event, indicating that the speech has been started.

### onProgress ~^(optional)^~
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._ Listener which receives the [onProgress](/plugin/texttospeech/event/onProgress/index.md) event multiple times during the speech.

### onComplete ~^(optional)^~
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._ Listener which receives the [onComplete](/plugin/texttospeech/event/onComplete/index.md) event after the speech has ended.

### onPause ~^(optional)^~ ~(not Android)~
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._ Listener which receives the [onPause](/plugin/texttospeech/event/onPause/index.md) event when the speech has been paused.

### onContinue ~^(optional)^~ ~(not Android)~
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._ Listener which receives the [onContinue](/plugin/texttospeech/event/onContinue/index.md) event when the speech has been resumed.