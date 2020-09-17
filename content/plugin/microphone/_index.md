# Microphone Plugin for Solar2D

The Microphone plugin allows you to record audio. Includes volume detection (only start recording when volume is high enough) and automatic gain control.
To get access to the plugin, you need to support me on Patreon https://www.patreon.com/lerg

Supported platforms: iOS, Android.

## Sample Project

https://github.com/Lerg/plugins-sample-microphone

# API Overview

## Functions

- [`microphone.enableDebug()`](#function_enableDebug)
- [`microphone.init()`](#function_init)
- [`microphone.getVolume()`](#function_getVolume)
- [`microphone.getGain()`](#function_getGain)
- [`microphone.start()`](#function_start)
- [`microphone.stop()`](#function_stop)
- [`microphone.set()`](#function_set)
- [`microphone.isRecording()`](#function_isRecording)

## Events

- [`init`](#event_init)
- [`recorded`](#event_recorded)

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
		['plugin.microphone'] = spiralcodestudio_plugin('microphone')
	}
}
```

# Functions

## <a name="function_enableDebug">`microphone.enableDebug()`</a>

Enables additional output for debugging purposes. Shows when signal detector changes states.

---

## <a name="function_init">`microphone.init(params)`</a>

Initializes the plugin. This function has to be called first, before using any other methods of the plugin.

### `params` <sub>required</sub>
Table. Contains parameters for the call &mdash; see the next section for details.

## Parameter Reference

The `params` table includes parameters for the call.

### `filename` <sub>required</sub>
String. Filename of the recording.

### `baseDir` <sub>optional</sub>
Directory. Where to save the recording. Default is `system.DocumentsDirectory`.

### `sampleRate` <sub>optional</sub>
Integer. Sample rate in Hz. Default is `44100`.

### `detector` <sub>optional</sub>
Table. Signal detector settings.

- `detector.on`
Number. Start recording when volume is larger or equal to this value.

- `detector.off`
Number. Trim the end if the volume of the last part is less than this value.

#### Example
```lua
detector = {
	on = 0.2,
	off = 0.05
}
```

### `gain` <sub>optional</sub>
Table. Automatic gain control settings.

- `gain.min`
Number. Minimal gain. Default is `0`.

- `gain.max`
Number. Maximum gain.

- `gain.value`
Number. Initial gain value. Default is `1`.

- `gain.target`
Number. Target volume. Set `0` to disable.

- `gain.speed`
Number. Gain adjustment speed. Default is `0.1`.

- `gain.allowClipping`
Boolean. If `true`, gain is not automatically reduced to prevent clipping.

## Example
```lua
gain = {
	min = 1,
	max = 10,
	target = 0.2
}
```

### `listener` <sub>required</sub>
Function. The callback function which receives [`init`](#event_init) and [`recorded`](#event_recorded) events.

---

## <a name="function_getVolume">`microphone.getVolume()`</a>

Returns current volume as a number between `0` and `1`.

## Example

```lua
local volume = microphone.getVolume()
print(volume)
```

---

## <a name="function_getGain">`microphone.getGain()`</a>

Returns current gain value as a number.

## Example

```lua
local gain = microphone.getGain()
print(gain)
```

---

## <a name="function_start">`microphone.start()`</a>

Starts the recording.

## Example

```lua
microphone.start()
```

---

## <a name="function_stop">`microphone.stop()`</a>

Stops the recording as saves it to a file.

## Example

```lua
microphone.stop()
```

---

## <a name="function_set">`microphone.set(params)`</a>

Adjusts detector settings and automatic gain control settings even while recording. The parameters are same as for the [`microphone.init()`](#function_init) function.

## Example

```lua
microphone.set{
	gain = {value = 1},
	detector = {on = 0.5}
}
```

---

## <a name="function_isRecording">`microphone.isRecording()`</a>

Returns `true` if currently recording.

## Example

```lua
print(microphone.isRecording())
```

---

# Events

## <a name="event_init">`init`</a>

Occurs when plugin is initialized

#### [event.name](#event_init_name)

#### [event.is_error](#event_init_is_error)

#### [event.error_code](#event_init_error_code)

#### [event.error_message](#event_init_error_message)

### <a name="event_init_name">`event.name`</a>

The string `'init'`.

---

### <a name="event_init_is_error">`event.is_error`</a>

Boolean. `true` in case of an error.

---

### <a name="event_init_error_code">`event.error_code`</a>

Number. Unique error code, present when [event.is_error](#event_init_is_error) is `true`, `nil` otherwise.

Possible codes:
- `'already_initialized'` - init() called before stopping recording.
- `'init_failed'` - Failed to init for various reasons.
- `'missing_microphone'` - No microphone.
- `'missing_permission'` - RECORD_AUDIO permission is missing from the manifest file.
- `'denied_permission'` - User denied permission.
- `'permission_request_failed'` - User didn't grant permission when requested.

- `'file_open_failed'` - Failed to open the file.
- `'file_write_failed'` - Failed to write to the file.
- `'empty_recording'` - Recording didn't trigger the detector.

---

### <a name="event_init_error_message">`event.error_message`</a>

String. Description of an error when [event.is_error](#event_init_is_error) is `true`, `nil` otherwise.

---

## <a name="event_recorded">`recorded`</a>

Occurs when recording is done.

#### [event.name](#event_recorded_name)

#### [event.is_error](#event_recorded_is_error)

#### [event.error_code](#event_recorded_error_code)

#### [event.error_message](#event_recorded_error_message)

### <a name="event_recorded_name">`event.name`</a>

The string `'recorded'`.

---

### <a name="event_recorded_is_error">`event.is_error`</a>

Boolean. `true` in case of an error.

---

### <a name="event_recorded_error_code">`event.error_code`</a>

Number. Unique error code, present when [event.is_error](#event_recorded_is_error) is `true`, `nil` otherwise.

Possible codes:
- 'file_open_failed' - Failed to open the file.
- 'file_write_failed' - Failed to write to the file.
- 'empty_recording' - Recording didn't trigger the detector.

---

### <a name="event_recorded_error_message">`event.error_message`</a>

String. Description of an error when [event.is_error](#event_recorded_is_error) is `true`, `nil` otherwise.

---

# Example

```lua
local json = require('json')
local microphone = require('plugin.microphone')

-- Random filename prevents audio caching by Solar2D.
local filename = 'recording_' .. tostring(math.random()):sub(3, 10) .. '.wav'

local function microphone_listener(event)
	print(json.encode(event))
	if not event.isError then
		if event.name == 'init' then
			-- Start recording.
			timer.performWithDelay(1000, function()
				microphone.start()
			end)

			-- Stop recording.
			timer.performWithDelay(5000, function()
				microphone.stop()
			end)
		elseif event.name == 'recorded' then
			-- Play recording.
			local audio_file = audio.loadSound(filename, system.DocumentsDirectory)
			audio.play(audio_file)
		end
	end
end

microphone.init{
	filename = filename,
	detector = {
		on = 0.2
		off = 0.05
	},
	gain = {
		max = 10,
		target = 0.1,
		allowClipping = true
	},
	listener = microphone_listener
}
```