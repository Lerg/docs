---
title: fbapplink
---
# fbapplink

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Event](https://docs.coronalabs.com/api/type/Event.html)

> __See also__          [facebook.*](/plugin/facebook/)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

Contains information about fetched deferered app link. If no link is found, `isError` would be `true`.

On iOS only `url` field is available along with `name` and `isError`.

## Properties

#### [event.name](/plugin/facebook/event/fbapplink/name)

#### [event.isError](/plugin/facebook/event/fbapplink/isError)

#### [event.url](/plugin/facebook/event/fbapplink/url)

#### [event.promotionCode](/plugin/facebook/event/fbapplink/promotionCode)

#### [event.argument](/plugin/facebook/event/fbapplink/argument)

#### [event.referer](/plugin/facebook/event/fbapplink/referer)

#### [event.ref](/plugin/facebook/event/fbapplink/ref)

## Sample data

Here is how the event table looks like on iOS and Android for `testdeeplink://deep` url and some random promotion code.

### iOS

```
{
	name = 'fbapplink',
	isError = false,
	url = 'testdeeplink://deep?al_applink_data=%7B%22target_url%22%3A%22testdeeplink%3A%5C%2F%5C%2Fdeep%22%2C%22extras%22%3A%7B%22fb_app_id%22%3A616336078377449%2C%22deeplink_context%22%3A%22%7B%5C%22promo_code%5C%22%3A%5C%22sadasd%5C%22%7D%22%7D%7D'
}
```

### Android

```
{
	name = 'fbapplink',
	isError = false,
	argument = 'Bundle[{com.facebook.platform.APPLINK_NATIVE_CLASS=, extras=Bundle[{deeplink_context=Bundle[{promo_code=sdfdsfdsf15}]}], target_url=testdeeplink://deep, com.facebook.platform.APPLINK_NATIVE_URL=testdeeplink://deep}]',
	promotionCode = 'sdfdsfdsf15',
	url = 'testdeeplink://deep'
}
```