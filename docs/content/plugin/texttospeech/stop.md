---
title: stop
---
# texttospeech.stop()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function](https://docs.coronalabs.com/api/type/Function.html)

> __Return value__      none

> __See also__          [texttospeech.*](/plugin/texttospeech/)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

Stops an ongoing speech.

## Syntax
```lua
texttospeech.stop(waitForWordEnd)
```

### waitForWordEnd <sub>optional</sub>
_[Boolean](https://docs.coronalabs.com/api/type/Boolean.html)._ If `true`, the speech will be interrupted at the word end. Otherwise the speech will be interrupted immediately.