---
title: newCursor
---
# mousecursor.newCursor()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function](https://docs.coronalabs.com/api/type/Function.html)

> __Return value__      [Cursor](/plugin/mousecursor/type/Cursor/)

> __See also__          [mousecursor.*](/plugin/mousecursor/)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

Creates a [cursor](/plugin/mousecursor/type/Cursor/) instance.

The cursor is not visible by defualt, call [cursor:show()](/plugin/mousecursor/type/Cursor/show) to make it visible.

You can either use standard system cursors like crosshair or pointing hand, or load a custom image to be used as a cursor.

If you are using several cursors in your app, there is no need to create a new instance each time mouse enters a specified area. Create all cursor instances at once and later switch between them by calling [cursor:show()](/plugin/mousecursor/type/Cursor/show).

## Custom cursor image format

- macOS: PNG image.
- Windows: CUR or ANI file.

## Syntax

This function accepts either a `name` string argument for the standard system cursor, or a `params` table for a custom image cursor.

```lua
mousecursor.newCursor(name | params)
```
### name <sub>required</sub>
_[String](https://docs.coronalabs.com/api/type/String.html)._ Name of a standard system mouse cursor. See the "Standard cursors" section for the list of system cursors.

### params <sub>required</sub>
_[Table](https://docs.coronalabs.com/api/type/Table.html)._ Contains parameters to make a cursor from a custom image.

## Parameter reference

The `params` table includes parameters for the call.

### filename <sub>required</sub>
_[String](https://docs.coronalabs.com/api/type/String.html)._ Custom cursor image filename. PMG on macOS, CUR or ANI on Windows.

### baseDir <sub>optional</sub>
[Constant](https://docs.coronalabs.com/api/type/Constant.html) Image base directory. Default is `system.ResourceDirectory`.

### x <sub>optional</sub> <sub>macOS only</sub>
_[Integer](/type/Integer/)._ X coordinate of the cursor's tip point in the image. Default is 0.

### y <sub>optional</sub> <sub>macOS only</sub>
_[Integer](/type/Integer/)._ Y coordinate of the cursor's tip point in the image. Default is 0.

## Standard cursors

### Universal

* `'arrow'`
* `'crosshair'`
* `'i beam'`
* `'pointing hand'`
* `'operation not allowed'`
* `'resize left right'`
* `'resize up'`
* `'resize up down'`

### macOS

* `'contextual menu'`
* `'closed hand'`
* `'disappearing item'`
* `'drag copy'`
* `'drag link'`
* `'open hand'`
* `'resize down'`
* `'resize left'`
* `'resize right'`
* `'i beam vertical'`

### Windows

* `'small hourglass'`
* `'help'`
* `'resize all'`
* `'resize up right'`
* `'resize up left'`
* `'hourglass'`
