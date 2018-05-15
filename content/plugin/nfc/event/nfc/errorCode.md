---
title: errorCode
---
# event.errorCode

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Number](https://docs.coronalabs.com/api/type/Number.html)

> __Event__             [nfc](/plugin/nfc/event/nfc/)

> __See also__          [nfc](/plugin/nfc/event/nfc/)
>						[nfc.*](/plugin/nfc/)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

Unique error code, present when [event.isError](/plugin/nfc/event/nfc/isError) is `true`, `nil` otherwise.

On iOS closing the NFC reading dialog generates an error event, but it should not be treated as an error, just a notification of a closed dialog.

## iOS values

- `'nfcreader_unsupported_feature'`
- `'nfcreader_security_violation'`
- `'nfcreader_transceive_tag_connection_lost'`
- `'nfcreader_transceive_retry_exceeded'`
- `'nfcreader_transceive_tag_response_error'`
- `'nfcreader_session_invalidation_user_canceled'`
- `'nfcreader_session_invalidation_session_timeout'`
- `'nfcreader_session_invalidation_terminated_unexpectedly'`
- `'nfcreader_session_invalidation_system_is_busy'`
- `'nfcreader_session_invalidation_first_ndef_tag_read'`
- `'nfctag_command_configuration_invalid_parameters'`