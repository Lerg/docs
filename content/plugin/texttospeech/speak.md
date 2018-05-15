---
title: speak
---
# texttospeech.speak()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function](https://docs.coronalabs.com/api/type/Function.html)

> __Return value__      none

> __See also__          [texttospeech.*](/plugin/texttospeech/)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

Generates and plays the speech. This process is not instant and it will take some time before you actually hear the sound.

## Syntax
```lua
texttospeech.speak(text, [params])
```
### text <sub>required</sub>
_[String](https://docs.coronalabs.com/api/type/String.html)._ The text to be spoken by a speech engine.

### params <sub>optional</sub>
_[Table](https://docs.coronalabs.com/api/type/Table.html)._ Contains parameters for the call &mdash; see the next section for details.

## Parameter Reference

The `params` table includes parameters for the call.

### language <sub>optional</sub>
_[String](https://docs.coronalabs.com/api/type/String.html)._ Set the language to be used, values can be `'ru-RU'`, `'fr-FR'` or other. Default is `'en-US'`. See [texttospeech.getLanguagesAndVoices()](/plugin/texttospeech/getLanguagesAndVoices) for the list of available languages.

### voice <sub>optional</sub>
_[String](https://docs.coronalabs.com/api/type/String.html)._ Set the voice to be used. Default value is specific to the platform and the engine. See [texttospeech.getLanguagesAndVoices()](/plugin/texttospeech/getLanguagesAndVoices) for the list of available voices.

### pitch <sub>optional</sub>
_[Float](/type/Float/)._ Set the pitch of the voice, value from `0.5` to `2.0`. Default is `1.0`.

### rate <sub>optional</sub>
_[Float](/type/Float/)._ Set the speech rate (speed), value from `0.5` to `2.0`, default is `1.0`. On iOS, tvOS and macOS limits are not known.

### volume <sub>optional</sub>
_[Float](/type/Float/)._ Set the volume of the speech, value from `0.0` to `1.0`. Default is `1.0`.

### id <sub>optional</sub>
_[String](https://docs.coronalabs.com/api/type/String.html)._ Speech identifier. If supplied, it will be passed to the corresponding listeners. Default value is a random numeric string.

### filename <sub>optional</sub> ~(Android, macOS)~
_[String](https://docs.coronalabs.com/api/type/String.html)._ If supplied, the generated speech will be written into a file instead of being played. WAV on Android, AIFF on macOS.

### baseDir <sub>optional</sub> ~(Android, macOS)~
_[Constant](https://docs.coronalabs.com/api/type/Constant.html)._ The base directory for the `filename`. Default is `system.TemporaryDirectory`.

### onStart <sub>optional</sub>
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._ Listener which receives the [onStart](/plugin/texttospeech/event/onStart/) event, indicating that the speech has been started.

### onProgress <sub>optional</sub>
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._ Listener which receives the [onProgress](/plugin/texttospeech/event/onProgress/) event multiple times during the speech.

### onComplete <sub>optional</sub>
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._ Listener which receives the [onComplete](/plugin/texttospeech/event/onComplete/) event after the speech has ended.

### onPause <sub>optional</sub> ~(not Android)~
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._ Listener which receives the [onPause](/plugin/texttospeech/event/onPause/) event when the speech has been paused.

### onContinue <sub>optional</sub> ~(not Android)~
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._ Listener which receives the [onContinue](/plugin/texttospeech/event/onContinue/) event when the speech has been resumed.
