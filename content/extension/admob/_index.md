---
title: admob
---
# admob.* &mdash; Admob

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Library](https://docs.coronalabs.com/api/type/library.html)
> --------------------- ------------------------------------------------------------------------------------------


## Overview

The [Admob](https://www.defold.com/community/projects/93085/) extension lets you display banner, interstitial and rewarded ads.

## Functions

#### [admob.enable_debug()](/extension/admob/enable_debug)

#### [admob.init()](/extension/admob/init)

#### [admob.load()](/extension/admob/load)

#### [admob.is_loaded()](/extension/admob/is_loaded)

#### [admob.show()](/extension/admob/show)

#### [admob.hide_banner()](/extension/admob/hide_banner)

## Events

#### [admob](/extension/admob/event/admob/)

## Project Settings

To use this extension, open `game.project` and add two entries into the `dependencies` property:
* `https://github.com/Lerg/extension-admob/archive/master.zip`
* `https://github.com/defold/extension-firebase-core/archive/master.zip`

Then select `Project -> Fetch Libraries` to download the extension in your project.

Previsouly `App Manifest` was required in `game.project` under `native_extension`. Now it's not needed and if you had it - please remove.

## Test Ads

ALWAYS use test ads during the development. Only switch to the real ads for submitting to the stores. To enable test ads use `test = true` option in the [admob.init()](/extension/admob/init) call.

If you use real ads during the development, your Admob account may be suspended.

## Demo

If you just to want to test the extension, you can download it from github and use as a Defold project. It will function as a demo. You don't need an Admob account for the demo.

## Usage

Use [admob.init()](/extension/admob/init) to initialize it when your app starts. A good place for that would be the `init()` function of some root game object. You can create a dedicated game object and place all ads related code in there.

Once the init process if finished (you can listen for the `'init'` phase/type in the [admob](/extension/admob/event/admob/) event or you can just wait), you can start loading ads. It's good to preload ads before you actually need to display it. Use [admob.load()](/extension/admob/load) to load and [admob.show()](/extension/admob/show) to show the ads.

When an ad has been closed (phase equals `'closed'`) you can preload next ad.

Banners are displayed automatically when loaded, no need to call [admob.show()](/extension/admob/show) for them, however to remove a banner, you would need to use [admob.hide_banner()](/extension/admob/hide_banner).

## Impressions Share

The extension will serve 1% of all impressions to it's owner benefit. By using this extension you agree with that. Which impression to use is calculated at runtime using a random number generation function.