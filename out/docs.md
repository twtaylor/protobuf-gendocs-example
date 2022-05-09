# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [api.proto](#api-proto)
    - [Alias](#m10-directory-Alias)
    - [CheckAliasRequest](#m10-directory-CheckAliasRequest)
    - [CreateImageUrlRequest](#m10-directory-CreateImageUrlRequest)
    - [GetObjectUrlRequest](#m10-directory-GetObjectUrlRequest)
    - [Ledger](#m10-directory-Ledger)
    - [ListLedgersResponse](#m10-directory-ListLedgersResponse)
    - [ObjectUrlResponse](#m10-directory-ObjectUrlResponse)
    - [SearchAliasesRequest](#m10-directory-SearchAliasesRequest)
    - [SearchAliasesResponse](#m10-directory-SearchAliasesResponse)
  
    - [Alias.Type](#m10-directory-Alias-Type)
  
    - [DirectoryService](#m10-directory-DirectoryService)
  
- [Scalar Value Types](#scalar-value-types)



<a name="api-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## api.proto



<a name="m10-directory-Alias"></a>

### Alias
Alias messages


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| handle | [string](#string) |  | &#34;testy@test.com&#34; |
| display_name | [string](#string) |  | &#34;Jon Jones&#34; |
| account_set_id | [bytes](#bytes) |  |  |
| operator | [string](#string) |  |  |
| code | [string](#string) |  | TODO: remove `code` from directory |
| alias_type | [Alias.Type](#m10-directory-Alias-Type) |  |  |






<a name="m10-directory-CheckAliasRequest"></a>

### CheckAliasRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| handle | [string](#string) |  |  |






<a name="m10-directory-CreateImageUrlRequest"></a>

### CreateImageUrlRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| mime_type | [string](#string) | optional |  |






<a name="m10-directory-GetObjectUrlRequest"></a>

### GetObjectUrlRequest
Document messages


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| object_id | [string](#string) |  |  |






<a name="m10-directory-Ledger"></a>

### Ledger
Ledger messages


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| operator | [string](#string) |  | &#34;m10&#34; |
| url | [string](#string) |  | &#34;https://usd.m10.net&#34; |
| code | [string](#string) |  | TODO: remove `code` from directory

&#34;USD&#34;, &#34;TSLA&#34;, &#34;DASH&#34;, etc supports official and unofficial ISO 4217 Codes https://en.wikipedia.org/wiki/ISO_4217#Active_codes |
| decimals | [int32](#int32) |  | 2 |






<a name="m10-directory-ListLedgersResponse"></a>

### ListLedgersResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ledgers | [Ledger](#m10-directory-Ledger) | repeated |  |






<a name="m10-directory-ObjectUrlResponse"></a>

### ObjectUrlResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| presigned_url | [string](#string) |  |  |
| object_id | [string](#string) |  |  |
| url | [string](#string) |  |  |






<a name="m10-directory-SearchAliasesRequest"></a>

### SearchAliasesRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| handle_prefix | [string](#string) |  |  |
| page_size | [int32](#int32) |  |  |
| page_token | [string](#string) |  |  |
| subject | [string](#string) |  |  |






<a name="m10-directory-SearchAliasesResponse"></a>

### SearchAliasesResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| aliases | [Alias](#m10-directory-Alias) | repeated |  |
| next_page_token | [string](#string) |  |  |





 


<a name="m10-directory-Alias-Type"></a>

### Alias.Type


| Name | Number | Description |
| ---- | ------ | ----------- |
| HANDLE | 0 |  |
| EMAIL | 1 |  |
| PHONE | 2 |  |


 

 


<a name="m10-directory-DirectoryService"></a>

### DirectoryService


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| CreateLedger | [Ledger](#m10-directory-Ledger) | [.google.protobuf.Empty](#google-protobuf-Empty) | Ledgers |
| ListLedgers | [.google.protobuf.Empty](#google-protobuf-Empty) | [ListLedgersResponse](#m10-directory-ListLedgersResponse) |  |
| CheckAlias | [CheckAliasRequest](#m10-directory-CheckAliasRequest) | [.google.protobuf.Empty](#google-protobuf-Empty) | Aliases |
| CreateAlias | [Alias](#m10-directory-Alias) | [.google.protobuf.Empty](#google-protobuf-Empty) |  |
| SearchAliases | [SearchAliasesRequest](#m10-directory-SearchAliasesRequest) | [SearchAliasesResponse](#m10-directory-SearchAliasesResponse) |  |
| CreateObjectUrl | [.google.protobuf.Empty](#google-protobuf-Empty) | [ObjectUrlResponse](#m10-directory-ObjectUrlResponse) | Transaction Support Documents |
| GetObjectUrl | [GetObjectUrlRequest](#m10-directory-GetObjectUrlRequest) | [ObjectUrlResponse](#m10-directory-ObjectUrlResponse) |  |
| CreateImageUrl | [CreateImageUrlRequest](#m10-directory-CreateImageUrlRequest) | [ObjectUrlResponse](#m10-directory-ObjectUrlResponse) |  |

 



## Scalar Value Types

| .proto Type | Notes | C++ | Java | Python | Go | C# | PHP | Ruby |
| ----------- | ----- | --- | ---- | ------ | -- | -- | --- | ---- |
| <a name="double" /> double |  | double | double | float | float64 | double | float | Float |
| <a name="float" /> float |  | float | float | float | float32 | float | float | Float |
| <a name="int32" /> int32 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint32 instead. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="int64" /> int64 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint64 instead. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="uint32" /> uint32 | Uses variable-length encoding. | uint32 | int | int/long | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="uint64" /> uint64 | Uses variable-length encoding. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum or Fixnum (as required) |
| <a name="sint32" /> sint32 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int32s. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sint64" /> sint64 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int64s. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="fixed32" /> fixed32 | Always four bytes. More efficient than uint32 if values are often greater than 2^28. | uint32 | int | int | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="fixed64" /> fixed64 | Always eight bytes. More efficient than uint64 if values are often greater than 2^56. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum |
| <a name="sfixed32" /> sfixed32 | Always four bytes. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sfixed64" /> sfixed64 | Always eight bytes. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="bool" /> bool |  | bool | boolean | boolean | bool | bool | boolean | TrueClass/FalseClass |
| <a name="string" /> string | A string must always contain UTF-8 encoded or 7-bit ASCII text. | string | String | str/unicode | string | string | string | String (UTF-8) |
| <a name="bytes" /> bytes | May contain any arbitrary sequence of bytes. | string | ByteString | str | []byte | ByteString | string | String (ASCII-8BIT) |

