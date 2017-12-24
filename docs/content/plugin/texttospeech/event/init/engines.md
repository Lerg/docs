---
title: engines
---
# event.engines

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Table](https://docs.coronalabs.com/api/type/Table.html)

> __Event__             [init](/plugin/texttospeech/event/init/)

> __Platform__          Android

> __See also__          [init](/plugin/texttospeech/event/init/)
>						[texttospeech.*](/plugin/texttospeech/)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

The list of available engines. Keys are engine names, values are engine identifiers.

## Sample output

```lua
{
    ['Google Text-to-speech Engine'] = 'com.google.android.tts',
    ['Pico TTS'] = 'com.svox.pico'
}
```