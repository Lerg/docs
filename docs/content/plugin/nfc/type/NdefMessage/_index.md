---
title: NdefMessage
---
# NdefMessage

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Array](https://docs.coronalabs.com/api/type/Array.html)


> __See also__          [nfc.*](/plugin/nfc/)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

NDEF message is an array containing NDEF records. Each NDEF records is a table with the following fields.

## NDEF Record

You can supply either verbose string values for `tnf` and `type` or you can supply raw values with `rawTnf` and `rawType`. Raw fields have higher priority. You are responsible for constructing a valid NDEF message, otherwise such messages can fail to be read on other devices. A single record should at least have a TNF value, other fields are optional or up to the specification.

### tnf <sub>optional</sub>
_[String](https://docs.coronalabs.com/api/type/String.html)._ TNF value, can be one of these:
- `'absolute uri'`
- `'empty'`
- `'external type'`
- `'mime media'`
- `'unchanged'`
- `'unknown'`
- `'well known'`

### type <sub>optional</sub>
_[String](https://docs.coronalabs.com/api/type/String.html)._ Type value, can be one of these or `nil`:
- `'alternative carrier'`
- `'handover carrier'`
- `'handover request'`
- `'handover select'`
- `'smart poster'`
- `'text'`
- `'uri'`

### id <sub>optional</sub>
_[String](https://docs.coronalabs.com/api/type/String.html)._ Id value, can be `nil`.

### payload <sub>optional</sub>
_[String](https://docs.coronalabs.com/api/type/String.html)._ Payload data, can be `nil`.

### rawTnf <sub>optional</sub>
_[Number](https://docs.coronalabs.com/api/type/Number.html)._ TNF value as an integer value.

### rawType <sub>optional</sub>
_[String](https://docs.coronalabs.com/api/type/String.html)._ Byte array of the type value.