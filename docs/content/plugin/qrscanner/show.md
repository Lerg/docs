---
title: show
---
# qrscanner.show()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function](https://docs.coronalabs.com/api/type/Function.html)

> __Return value__      none

> __See also__          [qrscanner.*](/plugin/qrscanner/)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

Opens the scanner view.

## Syntax
```lua
qrscanner.show(params)
```
### params <sub>required</sub>
_[Table](https://docs.coronalabs.com/api/type/Table.html)._ Contains parameters for the call &mdash; see the next section for details.

## Parameter Reference

The `params` table includes parameters for the call.

### topbar <sub>optional</sub>
_[Table](https://docs.coronalabs.com/api/type/Table.html)._ Topbar options, see below for details.

### useFrontCamera <sub>optional</sub>
_[Boolean](https://docs.coronalabs.com/api/type/Boolean.html)._ Set to `true` to use the front camera if it's available. If it's not available, the rear camera will be used.

### filter <sub>optional</sub>
_[String](https://docs.coronalabs.com/api/type/String.html)._ Filter regular expression. If present, all codes will be tested against the provided regular expression for a match. Only a matched code will be captured. This option can greatly reduce false triggerings or it can be used to scan only certain codes. For example to match a web URL you can use `'^https?://.*'`.

### symbols <sub>optional</sub>
_[Array](https://docs.coronalabs.com/api/type/Array.html) of [strings](https://docs.coronalabs.com/api/type/String.html)._ A list of all types of visual codes to search. Default is `'qr'`. See below for all supported types.

### mask <sub>optional</sub>
_[Table](https://docs.coronalabs.com/api/type/Table.html)._ Mask options. Mask is used to limit the scanning area of a camera. See below for details.

### overlays <sub>optional</sub>
_[Table](https://docs.coronalabs.com/api/type/Table.html)._ Specify what images to use as camera overlays. They are displayed on top of the camera feed. There can be three overlays as key/value pairs: `searching`, `mismatch` and `found`. Searching is the default mode, mismatch is used when a code is recognised, but doesn't match the filter, and found overlay is used when the scanning is successful. Each overlay is an overlay table, see below for details.

### listener <sub>optional</sub>
_[Listener](https://docs.coronalabs.com/api/type/Listener.html)._ Listener which receives the [show](/plugin/qrscanner/event/show/) event when the scanning has been completed, either successfully or with an error.

## topbar table

Contains options for displaying the topbar of the scanner view.

### text <sub>optional</sub>
_[String](https://docs.coronalabs.com/api/type/String.html)._ Title text.

### fontSize <sub>optional</sub> ~(Android)~
_[Float](/type/Float/)._ Relative font size of the title text, e.g. `0.5` is half the normal size. Default is `1.0`. On iOS the text size is automatically adjusted to fit in the topbar.

### color <sub>optional</sub>
_[Array](https://docs.coronalabs.com/api/type/Array.html) of [floats](/type/Float/)._ RGB color table for the text color. Default is `{1.0, 1.0, 1.0}`.

### backgroundColor <sub>optional</sub>
_[Array](https://docs.coronalabs.com/api/type/Array.html) of [floats](/type/Float/)._ RGB color table for the topbar background color. Default is `{0.0, 0.0, 0.0}`.

### isHidden <sub>optional</sub>
_[String](https://docs.coronalabs.com/api/type/String.html)._ If `true` the topbar is not displayed and the entire view is filled with the camera feed. There is no way of closing the scanner view other than by successfully scanning something. Suitable for kiosk mode.

## mask table

Contains masking parameters. All values are in range of `0.0`-`1.0`. Relative to view width or height.

### x <sub>optional</sub>
_[Float](/type/Float/)._ X coordinate of the masking window. Default is `0.0`.

### y <sub>optional</sub>
_[Float](/type/Float/)._ Y coordinate of the masking window. Default is `0.0`.

### width <sub>optional</sub>
_[Float](/type/Float/)._ Width of the masking window. Default is `1.0`.

### height <sub>optional</sub>
_[Float](/type/Float/)._ Height of the masking window. Default is `1.0`.

### color <sub>optional</sub>
_[Array](https://docs.coronalabs.com/api/type/Array.html) of [floats](/type/Float/)._ RGBA color table for the masking color. Default is `{0.0, 0.0, 0.0, 0.5}`.

## overlay table

Contains filename and a basedir to be used as an overlay image.

### filename <sub>optional</sub>
_[String](https://docs.coronalabs.com/api/type/String.html)._ Filename of an overlay image, e.g. `'images/searching_overlay.png'`.

### baseDir <sub>optional</sub>
_[Constant](https://docs.coronalabs.com/api/type/Constant.html)._ The base directory for the `filename`. Default is `system.ResourceDirectory`.

## List of symbols

Android and iOS have different set of supported visual codes.

**Android**: `'code39'`, `'code93'`, `'code128'`, `'codabar'`, `'databar'`, `'databar_exp'`, `'ean8'`, `'ean13'`, `'i25'`, `'isbn10'`, `'isbn13'`, `'partial'`, `'pdf417'`, `'qr'`, `'upca'`, `'upce'`.

**iOS**: `'aztec'`, `'code39'`, `'code39mod43'`, `'code93'`, `'code128'`, `'datamatrix'`, `'ean8'`, `'ean13'`, `'interleaved2of5'`, `'itf14'`, `'pdf417'`, `'qr'`, `'upce'`.