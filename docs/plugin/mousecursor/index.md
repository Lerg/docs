# mousecursor.* &mdash; Mouse Cursor

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Library](https://docs.coronalabs.com/api/type/library.html)
> --------------------- ------------------------------------------------------------------------------------------


## Overview

The [Mouse Cursor](https://marketplace.coronalabs.com/plugin/mousecursor) plugin provides access to VK.com Social Network.

Supported platforms: macOS 10.3+. Windows support is coming.

The latest version requires Corona 2016.2906 or later.

## Syntax
```lua
local mousecursor = require('plugin.mousecursor')  
```
## Functions

#### [mousecursor.newCursor()](/plugin/mousecursor/newCursor.md)

#### [mousecursor.show()](/plugin/mousecursor/show.md)

#### [mousecursor.hide()](/plugin/mousecursor/hide.md)

#### [mousecursor.enableDebug()](/plugin/mousecursor/enableDebug.md)

## Types

#### [Cursor](/plugin/mousecursor/type/Cursor/index.md)

## Project Settings

To use this plugin, add an entry into the `plugins` table of `build.settings`. When added, the build server will integrate the plugin during the build phase.

```lua
	settings = {
		plugins = {
			['plugin.mousecursor'] = {publisherId = 'com.spiralcodestudio'}
		}
	}
```
