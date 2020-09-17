# SoX Plugin for Solar2D

The SoX plugin allows you to process audio files using the [Sound eXchange](http://sox.sourceforge.net/Main/HomePage) toolkit. Features audio equalizer, audio normalization, adding reverberation, trimming silence, adjusting pitch, speed and many more.

To get access to the plugin, you need to support me on Patreon https://www.patreon.com/lerg

Here is the list of feautes of SoX http://sox.sourceforge.net/Docs/Features

See the official documentation of the toolkit for all effect names and their parameters.

Supported platforms: iOS, Android, macOS.

## Sample Project

https://github.com/Lerg/plugins-sample-sox

# API Overview

## Functions

- [`sox.init()`](#function_init)
- [`sox.process()`](#function_process)
- [`sox.quit()`](#function_quit)

# Project Settings

To use this plugin, add an entry into the `plugins` table of `build.settings`. When added, the build server will integrate the plugin during the build phase.

You also need to add a special function at the top of the `build.settings` file and provide your Patreon email and an access key. The access key you get when you become a patron.

```lua
local spiralcodestudio_patreon_email = 'YOUR_EMAIL'
local spiralcodestudio_key = 'YOUR_ACCESS_KEY'

local function spiralcodestudio_plugin(name)
	local plugin = {publisherId = 'com.spiralcodestudio', supportedPlatforms = {}}
	local platforms = {'android', 'appletvos', 'appletvsimulator', 'iphone', 'iphone-sim', 'mac-sim', 'win32-sim'}
	for i = 1, #platforms do
		local platform = platforms[i]
		plugin.supportedPlatforms[platform] = {url = 'https://build.spiralcodestudio.com/' .. spiralcodestudio_patreon_email .. '/' .. spiralcodestudio_key .. '/solar2d/' .. name .. '_' .. platform .. '.tgz'}
	end
	return plugin
end

settings = {
	plugins = {
		['plugin.sox'] = spiralcodestudio_plugin('sox')
	}
}
```

# Functions

## <a name="function_init">`sox.init(params)`</a>

Initializes the plugin. This function has to be called first, before using any other methods of the plugin.

Returns `true` if initialized successfully, `false` otherwise.

### `params` <sub>optional</sub>
Table. Contains parameters for the call &mdash; see the next section for details.

## Parameter Reference

The `params` table includes parameters for the call.

### `verbosity` <sub>optional</sub>
String. Set logging level: `'none'`, `'fail'`, `'warn'`, `'report'`, `'debug'`, `'debug_more'`, `'debug_most'`. Default is `'warn'`.

### `temporary_directory` <sub>optional</sub>
String. Path to temporay directory, used by some effects. Normally you should set it to `system.pathForFile(nil, system.TemporaryDirectory)`.

### `buffer_size` <sub>optional</sub>
Integer. Size (in bytes) used for blocks of sample data.

### `input_buffer_size` <sub>optional</sub>
Integer. Size (in bytes) used for blocks of input sample data.

### `use_threads` <sub>optional</sub>
Boolean. Set to `true` to use threading.

---

## <a name="function_process">`sox.process(params)`</a>

Opens an audio file, applies audio effects on it and saves the result as a new audio file.

### `params` <sub>required</sub>
Table. Contains parameters for the call &mdash; see the next section for details.

## Parameter Reference

The `params` table includes parameters for the call.

### `input` <sub>required</sub>
String. Path to the input file.

### `output` <sub>required</sub>
String. Path to the output file.

### `effects` <sub>required</sub>
Array. The list of effects to apply. Each effect is a table with effect name and optionally effect parameters.

- `effect.name` - String. Name of the effect.
- `effect.params `- String. Optional parameters for the effect.

---

## <a name="function_quit">`sox.quit()`</a>

Shuts down the SoX engine.

---

# Example

```lua
local sox = require('plugin.sox')

-- Init the SoX engine.
local success = sox.init{
	verbosity = 'debug_most',
	temporary_directory = system.pathForFile(nil, system.TemporaryDirectory),
	buffer_size = 32768,
	input_buffer_size = 32768,
	use_threads = true
}
if not success then
	print('Failed to init the SoX plugin.')
end

-- Open sample.wav, normalize audio levels and add audio contrast. Save the result as result.wav.
sox.process{
	input = system.pathForFile('sample.wav', system.ResourceDirectory),
	output = system.pathForFile('result.wav', system.DocumentsDirectory),
	effects = {
		{name = 'gain', params = '-n'},
		{name = 'contrast', params = '50'}
	}
}

-- Quit the engine.
sox.quit()
```