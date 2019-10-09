---
title: show
---
# chrometabs.show()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function](https://docs.coronalabs.com/api/type/Function.html)

> __Return value__      none

> __See also__          [chrometabs.*](/plugin/chrometabs/)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

Asynchronously fetches app link information that might have been stored for use after installation of the app.

## Syntax
```lua
	chrometabs.show(params)
```
### params <sub>required</sub>
_[Table](https://docs.coronalabs.com/api/type/Table.html)._ Contains parameters for the call &mdash; see the next section for details.

## Parameter Reference

The `params` table includes parameters for the call.

### url <sub>required</sub>
_[String](https://docs.coronalabs.com/api/type/String.html)._ URL to load.

### shareMenu <sub>optional</sub>
_[Boolean](https://docs.coronalabs.com/api/type/Boolean.html)._ If `true` - show the standard share menu button.

### urlBarHiding <sub>optional</sub>
_[Boolean](https://docs.coronalabs.com/api/type/Boolean.html)._ If `true` - hide url bar when scrolling.

### instantApps <sub>optional</sub>
_[Boolean](https://docs.coronalabs.com/api/type/Boolean.html)._ If `true` - allow loading of instant apps.

### showTitle <sub>optional</sub>
_[Boolean](https://docs.coronalabs.com/api/type/Boolean.html)._ If `true` - show the page title in the url bar.

### startAnimation <sub>optional</sub>
_[String](https://docs.coronalabs.com/api/type/String.html)._ Showing animation, `'slide_right'` or `'fade'`.

### exitAnimation <sub>optional</sub>
_[String](https://docs.coronalabs.com/api/type/String.html)._ Closing animation, same options as for `startAnimation`.

### toolbarColor <sub>optional</sub>
_[Table](https://docs.coronalabs.com/api/type/Table.html)._ Color of the toolbar, a table with RGB values, e.g. `{0.9, 0.1, 0.1}`.

### secondaryToolbarColor <sub>optional</sub>
_[Table](https://docs.coronalabs.com/api/type/Table.html)._ Secondary color of the toolbar, a table with RGB values, e.g. `{0.9, 0.1, 0.1}`.
