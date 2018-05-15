---
title: messages
---
# event.messages

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Array](https://docs.coronalabs.com/api/type/Array.html)

> __Event__             [nfc](/plugin/nfc/event/nfc/)

> __See also__          [nfc](/plugin/nfc/event/nfc/)
>						[nfc.*](/plugin/nfc/)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

Present only when `event.type` is `'ndef'`. Contains NDEF message, which consists of NDEF records.

Each element of the array is a table with the following properties.

## Properties

### id
_[String](https://docs.coronalabs.com/api/type/String.html)._ Record id value.

### tnf
_[String](https://docs.coronalabs.com/api/type/String.html)._ TNF value. Can be `'absolute uri'`, `'empty'`, `'external type'`, `'mime media'`, `'unchanged'`, `'unknown'` or `'well known'`.

### type
_[String](https://docs.coronalabs.com/api/type/String.html)._ NDEF type. Can be `'alternative carrier'`, `'handover carrier'`, `'handover request'`, `'handover select'`, `'smart poster'`, `'text'` or `'uri'`.

### rawTnf
_[Number](https://docs.coronalabs.com/api/type/Number.html)._ Raw TNF integer value.

### rawType
_[Number](https://docs.coronalabs.com/api/type/Number.html)._ Raw NDEF type byte string.

### payload
_[String](https://docs.coronalabs.com/api/type/String.html)._ Raw byte string of the NDEF payload.

### mimeType
_[String](https://docs.coronalabs.com/api/type/String.html)._ Optional mime type of the record, only present if can be extracted. Requires Android 4.1+.

### uri
_[String](https://docs.coronalabs.com/api/type/String.html)._ Optional URI inside the record, only present if can be extracted. Requires Android 4.1+.

### data
_[Table](https://docs.coronalabs.com/api/type/Table.html)._ Optional parsed NDEF message. See below for details.

## Smart Poster NDEF record data

### titles
_[Array](https://docs.coronalabs.com/api/type/Array.html)._ Array of tables, optional list of text messages in different languages. Table structure is identical to the Text NDEF tag data.

### action
_[String](https://docs.coronalabs.com/api/type/String.html)._ Optional recommended action, can be `'unknown'`, `'do action'`, `'save for later'` or `'open for editing'`.

### mimeType
_[String](https://docs.coronalabs.com/api/type/String.html)._ Optional mime type of the entity that the `uri` points to.

### uri
_[String](https://docs.coronalabs.com/api/type/String.html)._ URI of the Smart Poster NDEF tag record.

## Text NDEF record data

### encoding
_[String](https://docs.coronalabs.com/api/type/String.html)._ Either `'UTF-8'` or `'UTF-16'`.

### language
_[String](https://docs.coronalabs.com/api/type/String.html)._ Language code of the text.

### text
_[String](https://docs.coronalabs.com/api/type/String.html)._ text message.

## URI NDEF record data

### uri
_[String](https://docs.coronalabs.com/api/type/String.html)._ URI of the record.