# mousecursor.newCursor()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function](https://docs.coronalabs.com/api/type/Function.html)

> __Return value__      [Cursor](/plugin/mousecursor/type/Cursor/index.md)

> __See also__          [mousecursor.*](/plugin/mousecursor/index.md)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

Creates a [cursor](/plugin/mousecursor/type/Cursor/index.md) instance.

The cursor is not visible by defualt, call [cursor:show()](/plugin/mousecursor/type/Cursor/show.md) to make it visible.

You can either use standard system cursors like crosshair or pointing hand, or load a custom image to be used as a cursor.

If you are using several cursors in your app, there is no need to create a new instance each time mouse enters a specified area. Create all cursor instances at once and later switch between them by calling [cursor:show()](/plugin/mousecursor/type/Cursor/show.md).

## Syntax

This function accepts either a `name` string argument for the standard system cursor, or a `params` table for a custom image cursor.

```lua
mousecursor.newCursor(name | params)
```
### name ~^(required)^~
_[String](https://docs.coronalabs.com/api/type/String.html)._ Name of a standard system mouse cursor. See the "Standard cursors" section for the list of system cursors.

### params ~^(required)^~
_[Table](https://docs.coronalabs.com/api/type/Table.html)._ Contains parameters to make a cursor from a custom image.

## Parameter reference

The `params` table includes parameters for the call.

### filename ~^(required)^~
_[String](https://docs.coronalabs.com/api/type/String.html)._ Custom cursor image filename.

### baseDir ~^(optional)^~
[Constant](https://docs.coronalabs.com/api/type/Constant.html) Image base directory. Default is `system.ResourceDirectory`.

### x ~^(optional)^~
_[Integer](/type/Float/Integer.md)._ X coordinate of the cursor's tip point in the image. Default is 0.

### y ~^(optional)^~
_[Integer](/type/Float/Integer.md)._ Y coordinate of the cursor's tip point in the image. Default is 0.

## Standard cursors

### macOS

* `'arrow'`
* `'contextual menu'`
* `'closed hand'`
* `'crosshair'`
* `'disappearing item'`
* `'drag copy'`
* `'drag link'`
* `'i beam'`
* `'open hand'`
* `'operation not allowed'`
* `'pointing hand'`
* `'resize down'`
* `'resize left'`
* `'resize left right'`
* `'resize right'`
* `'resize up'`
* `'resize up down'`
* `'i beam vertical'`

### Windows

To be provided.
