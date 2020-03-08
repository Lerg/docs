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

Loads a specified ad unit. It also allows you to specify additional targeting parameters. To understand all of them please read targeting guides for [iOS](https://developers.google.com/admob/ios/targeting) and [Android](https://developers.google.com/admob/android/targeting).

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

### gender <sub>optional</sub>
_[String](https://docs.coronalabs.com/api/type/String.html)._ User gender: `'male'` or `'female'`.

### is_designed_for_families <sub>optional</sub>
_[Boolean](https://docs.coronalabs.com/api/type/Boolean.html)._ Set it to `true` if your app is accepted as "Designed For Families". Android only.

### tag_for_child_directed_treatment <sub>optional</sub>
_[Boolean](https://docs.coronalabs.com/api/type/Boolean.html)._ For purposes of the [Children's Online Privacy Protection Act (COPPA)](http://business.ftc.gov/privacy-and-security/children%27s-privacy), there is a setting called "tag for child-directed treatment". By setting this to `true`, you certify that this notification is accurate and you are authorized to act on behalf of the owner of the app. You understand that abuse of this setting may result in termination of your Google account.

### tag_for_under_age_of_consent <sub>optional</sub>
_[Boolean](https://docs.coronalabs.com/api/type/Boolean.html)._ See [Users under the age of consent](https://developers.google.com/admob/unity/targeting#users_under_the_age_of_consent), default is `false`. iOS only for now.

### non_personalized <sub>optional</sub>
_[Boolean](https://docs.coronalabs.com/api/type/Boolean.html)._ Set it to `true` if you would like to request non-personalized ads. Under the Google EU User Consent Policy, you must make certain disclosures to your users in the European Economic Area (EEA) and obtain their consent to show personalized ads. This policy reflects the requirements of the EU ePrivacy Directive and the General Data Protection Regulation (GDPR).

### restricted_data_processing <sub>optional</sub>
_[Boolean](https://docs.coronalabs.com/api/type/Boolean.html)._ Set it to `true` if you would like to [restrict data processing](https://privacy.google.com/businesses/rdp/) for compliance with the [California Consumer Privacy Act (CCPA)](https://support.google.com/admob/answer/9561022).

### max_ad_content_rating <sub>optional</sub>
_[String](https://docs.coronalabs.com/api/type/String.html)._ AdMob returns ads with a content rating at or below the specified level. Possible values are: `'G'`, `'PG'`, `'T'`, `'MA'`.

### birthday <sub>optional</sub>
_[Table](https://docs.coronalabs.com/api/type/Table.html)._ A table with three numeric components of a date: `year`, `month` and `day`. All fields are required. E.g. `{year = 1970, month = 1, day = 1}`.

### location <sub>optional</sub>
_[Table](https://docs.coronalabs.com/api/type/Table.html)._ A table with three numeric components of a location: `latitude`, `longitude` and `accuracy`. All fields are required. E.g. `{latitude = 59.3385206, longitude = 18.0303522, accuracy = 20}`.

### content_url <sub>optional</sub>
_[String](https://docs.coronalabs.com/api/type/String.html)._ When requesting an ad, apps may pass the URL of the content they are serving. E.g. a blog post URL or a news URL that is being shown in your app.

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