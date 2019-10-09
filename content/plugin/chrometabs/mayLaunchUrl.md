---
title: mayLaunchUrl
---
# chrometabs.mayLaunchUrl()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function](https://docs.coronalabs.com/api/type/Function.html)

> __Return value__      none

> __See also__          [chrometabs.*](/plugin/chrometabs/)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

Tell the browser which URLs are likely to be requested so that some preloading can happen.

A session has to be started before calling this function with [chrometabs.newSession()](/plugin/chrometabs/newSession).

## Syntax
```lua
	chrometabs.mayLaunchUrl(url, additional_urls)
```

### url <sub>required</sub>
_[String](https://docs.coronalabs.com/api/type/String.html)._ The most probable URL.

### additional_urls <sub>optional</sub>
_[Table](https://docs.coronalabs.com/api/type/Table.html)._ The list of other less probable URLs. More probable URLs come first.