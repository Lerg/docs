# texttospeech.pause()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function](https://docs.coronalabs.com/api/type/Function.html)

> __Return value__      none

> __See also__          [texttospeech.*](/plugin/texttospeech/index.md)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

Pauses an ongoing speech. Can be resumed by [texttospeech.continue()](/plugin/texttospeech/continue.md)

## Syntax
```lua
texttospeech.pause(waitForWordEnd)
```

### waitForWordEnd ~^(optional)^~
_[Boolean](https://docs.coronalabs.com/api/type/Boolean.html)._ If `true`, the speech will be interrupted at the word end. Otherwise the speech will be interrupted immediately.