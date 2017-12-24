# texttospeech.init()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function](https://docs.coronalabs.com/api/type/Function.html)

> __Return value__      none

> __See also__          [texttospeech.*](/plugin/texttospeech/)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

Must be callled before you try to synthesize any audio.

## Syntax 1
```lua
texttospeech.init([listener])
```
### listener ~^(optional)^~
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._ Listener which receives the [init](/plugin/texttospeech/event/init/) event.

## Syntax 2
```lua
texttospeech.init([params])
```
### params ~^(required)^~
_[Table](https://docs.coronalabs.com/api/type/Table.html)._ Contains parameters for the call &mdash; see the next section for details.

## Parameter Reference

The `params` table includes parameters for the call.

### engine ~^(optional)^~ ~(Android)~
_[String](https://docs.coronalabs.com/api/type/String.html)._ Speech engine identifier. If supplied, the specified engine will be loaded. Call `texttospeech.init()` again to change the engine. 

### listener ~^(optional)^~
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._ Listener which receives the [init](/plugin/texttospeech/event/init/) event.