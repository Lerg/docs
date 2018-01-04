---
title: load
---
# admob.load()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function](https://docs.coronalabs.com/api/type/Function.html)

> __Return value__      none

> __See also__          [admob.*](/extension/admob/)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

Loads a specified ad unit.

## Syntax
```lua
admob.load(params)
```
### params <sub>required</sub>
_[Table](https://docs.coronalabs.com/api/type/Table.html)._ Contains parameters for the call &mdash; see the next section for details.

## Parameter Reference

The `params` table includes parameters for the call.

### type <sub>optional</sub>
_[String](https://docs.coronalabs.com/api/type/String.html)._ Type of the ad unit: `'banner'`, `'interstitial'` (default) or `'rewarded'`. 

### id <sub>required</sub>
_[String](https://docs.coronalabs.com/api/type/String.html)._ Ad unit id, e.g. `'ca-app-pub-3940256099942544/1033173712'`.

### immersive <sub>optional</sub>
_[Boolean](https://docs.coronalabs.com/api/type/Boolean.html)._ If `true`, the video ad will hide onscreen navigation bar on Android.

### user_id <sub>optional</sub>
_[String](https://docs.coronalabs.com/api/type/String.html)._ Sets the user ID to be used in server-to-server reward callbacks.

### keywords <sub>optional</sub>
_[Array](https://docs.coronalabs.com/api/type/Array.html)._ A set of string keywords to be used when an ad is being chosed. E.g. `{'action', 'game'}`. It may increase your revenue by displaying relevant ads.

### size <sub>optional</sub>
_[String](https://docs.coronalabs.com/api/type/String.html)._ Banner size to load: `'banner'` (default), `'large'`, `'medium'`, `'full'`, `'leaderboard'`, `'smart'`, `'smart_portrait'` (iOS only), `'smart_landscape'` (iOS only).

See "Banner sizes" section on [Admob Android Banner](https://developers.google.com/admob/android/banner) and [Admob iOS Banner](https://developers.google.com/admob/ios/banner) pages for more details.

If a selected banner size can't fit on screen, it won't be displayed. A good option is to use the `'smart'` banner size, in this case the actual size is adapted to the screen width. 

### position <sub>optional</sub>
_[String](https://docs.coronalabs.com/api/type/String.html)._ Banner position on screen: `'top'` or `'bottom'` (default).

## Example

```lua
-- Load rewarded video ad.
admob.load{
	type = 'rewarded',
	id = 'ca-app-pub-3940256099942544/5224354917',
	immersive = true,
	keywords = {'action', 'game'}
}

-- Load banner ad.
admob.load{
	type = 'banner',
	id = 'ca-app-pub-3940256099942544/6300978111',
	keywords = {'action', 'game'},
	size = 'smart',
	position = 'top'
}
```