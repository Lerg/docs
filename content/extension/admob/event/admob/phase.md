---
title: phase
---
# event.phase

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [String](https://docs.coronalabs.com/api/type/String.html)

> __Event__             [admob](/extension/admob/event/admob/)

> __See also__          [admob](/extension/admob/event/admob/)
>						[admob.*](/extension/admob/)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

[String](https://docs.coronalabs.com/api/type/String.html) Phase of an ad unit lifetime.

Possible values depend on the ad type [event.type](/extension/admob/event/admob/type). 

### banner

* `'closed'` - banner ad is closed.
* `'failed_to_load'` - banner ad request failed, `is_error` is `true`.
* `'left_application'` - banner ad leaves the application (e.g., to go to the browser).
* `'loaded'` - banner ad is loaded.
* `'opened'` - banner ad is displayed.

### interstitial

* `'closed'` - interstitial ad is closed.
* `'failed_to_load'` - interstitial ad request failed, `is_error` is `true`.
* `'left_application'` - interstitial ad leaves the application (e.g., to go to the browser).
* `'loaded'` - interstitial ad is loaded.
* `'opened'` - interstitial ad is displayed.

### rewarded

* `'closed'` - video ad is closed.
* `'failed_to_load'` - video ad request failed, `is_error` is `true`.
* `'left_application'` - video ad leaves the application (e.g., to go to the browser).
* `'loaded'` - video ad is loaded.
* `'opened'` - video ad opens a overlay that covers the screen.
* `'rewarded'` - video ad has triggered a reward.
* `'started'` - video ad starts to play.