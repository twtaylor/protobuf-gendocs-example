# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [sdk/api.proto](#sdk_api-proto)
    - [ChainInfo](#m10-sdk-ChainInfo)
    - [FinalizedTransaction](#m10-sdk-FinalizedTransaction)
    - [FinalizedTransactions](#m10-sdk-FinalizedTransactions)
    - [GetAccountSetRequest](#m10-sdk-GetAccountSetRequest)
    - [GetRoleBindingRequest](#m10-sdk-GetRoleBindingRequest)
    - [GetRoleRequest](#m10-sdk-GetRoleRequest)
    - [GetTransactionRequest](#m10-sdk-GetTransactionRequest)
    - [GroupTransactionsRequest](#m10-sdk-GroupTransactionsRequest)
    - [GroupedFinalizedTransactions](#m10-sdk-GroupedFinalizedTransactions)
    - [ListAccountSetsRequest](#m10-sdk-ListAccountSetsRequest)
    - [ListAccountSetsResponse](#m10-sdk-ListAccountSetsResponse)
    - [ListAccountsRequest](#m10-sdk-ListAccountsRequest)
    - [ListAccountsResponse](#m10-sdk-ListAccountsResponse)
    - [ListRoleBindingsRequest](#m10-sdk-ListRoleBindingsRequest)
    - [ListRoleBindingsResponse](#m10-sdk-ListRoleBindingsResponse)
    - [ListRolesRequest](#m10-sdk-ListRolesRequest)
    - [ListRolesResponse](#m10-sdk-ListRolesResponse)
    - [ListTransactionsRequest](#m10-sdk-ListTransactionsRequest)
    - [ObserveAccountsRequest](#m10-sdk-ObserveAccountsRequest)
    - [ObserveActionsRequest](#m10-sdk-ObserveActionsRequest)
    - [ObserveResourcesRequest](#m10-sdk-ObserveResourcesRequest)
    - [Page](#m10-sdk-Page)
    - [RequestEnvelope](#m10-sdk-RequestEnvelope)
    - [Signature](#m10-sdk-Signature)
    - [TxId](#m10-sdk-TxId)
  
    - [Signature.Algorithm](#m10-sdk-Signature-Algorithm)
  
    - [M10QueryService](#m10-sdk-M10QueryService)
    - [M10TxService](#m10-sdk-M10TxService)
  
- [Scalar Value Types](#scalar-value-types)



<a name="sdk_api-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## sdk/api.proto



<a name="m10-sdk-ChainInfo"></a>

### ChainInfo



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| block_height | [uint64](#uint64) |  |  |






<a name="m10-sdk-FinalizedTransaction"></a>

### FinalizedTransaction



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| request | [transaction.TransactionRequestPayload](#m10-sdk-transaction-TransactionRequestPayload) |  |  |
| response | [transaction.TransactionResponse](#m10-sdk-transaction-TransactionResponse) |  |  |






<a name="m10-sdk-FinalizedTransactions"></a>

### FinalizedTransactions



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| transactions | [FinalizedTransaction](#m10-sdk-FinalizedTransaction) | repeated |  |






<a name="m10-sdk-GetAccountSetRequest"></a>

### GetAccountSetRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [bytes](#bytes) |  |  |






<a name="m10-sdk-GetRoleBindingRequest"></a>

### GetRoleBindingRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [bytes](#bytes) |  |  |






<a name="m10-sdk-GetRoleRequest"></a>

### GetRoleRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [bytes](#bytes) |  |  |






<a name="m10-sdk-GetTransactionRequest"></a>

### GetTransactionRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| tx_id | [uint64](#uint64) |  |  |






<a name="m10-sdk-GroupTransactionsRequest"></a>

### GroupTransactionsRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| account_id | [bytes](#bytes) |  | Filter by account ID |
| limit_groups | [uint64](#uint64) |  |  |
| min_tx_id | [uint64](#uint64) |  |  |
| max_tx_id | [uint64](#uint64) |  | default = maximum possible tx id |






<a name="m10-sdk-GroupedFinalizedTransactions"></a>

### GroupedFinalizedTransactions



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| groups | [FinalizedTransactions](#m10-sdk-FinalizedTransactions) | repeated |  |






<a name="m10-sdk-ListAccountSetsRequest"></a>

### ListAccountSetsRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| owner | [bytes](#bytes) |  |  |
| name | [string](#string) |  |  |
| page | [Page](#m10-sdk-Page) |  |  |






<a name="m10-sdk-ListAccountSetsResponse"></a>

### ListAccountSetsResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| account_sets | [model.AccountSet](#m10-sdk-model-AccountSet) | repeated |  |
| next_request | [ListAccountSetsRequest](#m10-sdk-ListAccountSetsRequest) |  |  |






<a name="m10-sdk-ListAccountsRequest"></a>

### ListAccountsRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| owner | [bytes](#bytes) |  |  |
| page | [Page](#m10-sdk-Page) |  |  |






<a name="m10-sdk-ListAccountsResponse"></a>

### ListAccountsResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| accounts | [model.Account](#m10-sdk-model-Account) | repeated |  |
| next_request | [ListAccountsRequest](#m10-sdk-ListAccountsRequest) |  |  |






<a name="m10-sdk-ListRoleBindingsRequest"></a>

### ListRoleBindingsRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  |  |
| page | [Page](#m10-sdk-Page) |  |  |






<a name="m10-sdk-ListRoleBindingsResponse"></a>

### ListRoleBindingsResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| role_bindings | [RoleBinding](#m10-sdk-RoleBinding) | repeated |  |
| next_request | [ListRoleBindingsRequest](#m10-sdk-ListRoleBindingsRequest) |  |  |






<a name="m10-sdk-ListRolesRequest"></a>

### ListRolesRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  |  |
| page | [Page](#m10-sdk-Page) |  |  |






<a name="m10-sdk-ListRolesResponse"></a>

### ListRolesResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| roles | [Role](#m10-sdk-Role) | repeated |  |
| next_request | [ListRolesRequest](#m10-sdk-ListRolesRequest) |  |  |






<a name="m10-sdk-ListTransactionsRequest"></a>

### ListTransactionsRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| context_id | [bytes](#bytes) |  | Filters transactions by context ID |
| limit | [uint64](#uint64) |  |  |
| min_tx_id | [uint64](#uint64) |  |  |
| max_tx_id | [uint64](#uint64) |  | default = maximum possible tx id |






<a name="m10-sdk-ObserveAccountsRequest"></a>

### ObserveAccountsRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| starting_from | [TxId](#m10-sdk-TxId) |  | Start observing from this transaction ID If empty, only live transfers will be observed |
| involved_accounts | [bytes](#bytes) | repeated | Yields transfers which involve these account IDs |






<a name="m10-sdk-ObserveActionsRequest"></a>

### ObserveActionsRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| starting_from | [TxId](#m10-sdk-TxId) |  | Request actions starting from the following transaction ID Note: If empty, only stream live transfers |
| name | [string](#string) |  | Name of the action to observe |
| involves_accounts | [bytes](#bytes) | repeated | Request actions invoked involving these account IDs |






<a name="m10-sdk-ObserveResourcesRequest"></a>

### ObserveResourcesRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| expression | [Exp](#m10-sdk-Exp) |  | Request resources matching the provided filter |
| collection | [string](#string) |  | The resource collection to observe |
| starting_from | [TxId](#m10-sdk-TxId) |  | Request transfers starting from the following transaction ID Note: If empty, only stream live resource changes |






<a name="m10-sdk-Page"></a>

### Page



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| limit | [uint32](#uint32) |  |  |
| last_id | [bytes](#bytes) |  |  |






<a name="m10-sdk-RequestEnvelope"></a>

### RequestEnvelope



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| payload | [bytes](#bytes) |  |  |
| signature | [Signature](#m10-sdk-Signature) |  |  |






<a name="m10-sdk-Signature"></a>

### Signature



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| public_key | [bytes](#bytes) |  |  |
| signature | [bytes](#bytes) |  |  |
| algorithm | [Signature.Algorithm](#m10-sdk-Signature-Algorithm) |  |  |






<a name="m10-sdk-TxId"></a>

### TxId



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| tx_id | [uint64](#uint64) |  |  |





 


<a name="m10-sdk-Signature-Algorithm"></a>

### Signature.Algorithm


| Name | Number | Description |
| ---- | ------ | ----------- |
| P256_SHA256_ASN1 | 0 |  |
| ED25519 | 1 |  |


 

 


<a name="m10-sdk-M10QueryService"></a>

### M10QueryService


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| GetTransfer | [RequestEnvelope](#m10-sdk-RequestEnvelope) | [transaction.FinalizedTransfer](#m10-sdk-transaction-FinalizedTransfer) | Transfers |
| ListTransfers | [RequestEnvelope](#m10-sdk-RequestEnvelope) | [transaction.FinalizedTransfers](#m10-sdk-transaction-FinalizedTransfers) |  |
| ObserveTransfers | [RequestEnvelope](#m10-sdk-RequestEnvelope) | [FinalizedTransactions](#m10-sdk-FinalizedTransactions) stream | Request to observe all transfers processed by the M10 ledger Param: [`RequestEnvelope`] should contain [`ObserveAccountsRequest`] |
| GetIndexedAccount | [RequestEnvelope](#m10-sdk-RequestEnvelope) | [transaction.IndexedAccount](#m10-sdk-transaction-IndexedAccount) | Accounts |
| GetAccount | [RequestEnvelope](#m10-sdk-RequestEnvelope) | [model.Account](#m10-sdk-model-Account) |  |
| GetAccountInfo | [RequestEnvelope](#m10-sdk-RequestEnvelope) | [model.AccountInfo](#m10-sdk-model-AccountInfo) |  |
| ListAccounts | [RequestEnvelope](#m10-sdk-RequestEnvelope) | [ListAccountsResponse](#m10-sdk-ListAccountsResponse) |  |
| ObserveAccounts | [RequestEnvelope](#m10-sdk-RequestEnvelope) | [FinalizedTransactions](#m10-sdk-FinalizedTransactions) stream | Request to observe all account changes processed by the M10 ledger Param: [`RequestEnvelope`] should contain [`ObserveAccountsRequest`] |
| GetAction | [RequestEnvelope](#m10-sdk-RequestEnvelope) | [transaction.Action](#m10-sdk-transaction-Action) | Actions |
| ListActions | [RequestEnvelope](#m10-sdk-RequestEnvelope) | [transaction.Actions](#m10-sdk-transaction-Actions) |  |
| ObserveActions | [RequestEnvelope](#m10-sdk-RequestEnvelope) | [FinalizedTransactions](#m10-sdk-FinalizedTransactions) stream | Request to observe all actions processed by the M10 ledger Param: [`RequestEnvelope`] should contain [`ObserveActionsRequest`] |
| GetChainInfo | [.google.protobuf.Empty](#google-protobuf-Empty) | [ChainInfo](#m10-sdk-ChainInfo) | ChainInfo |
| GetTransaction | [RequestEnvelope](#m10-sdk-RequestEnvelope) | [FinalizedTransaction](#m10-sdk-FinalizedTransaction) | Transactions Request a specific transaction by ID Param: [`RequestEnvelope`] should contain [`GetTransactionsRequest`] |
| ListTransactions | [RequestEnvelope](#m10-sdk-RequestEnvelope) | [FinalizedTransactions](#m10-sdk-FinalizedTransactions) | Request to list all transactions by context ID Param: [`RequestEnvelope`] should contain [`ListTransactionsRequest`] |
| GroupTransactions | [RequestEnvelope](#m10-sdk-RequestEnvelope) | [GroupedFinalizedTransactions](#m10-sdk-GroupedFinalizedTransactions) | Request to group all transactions related to a specific account by context ID Param: [`RequestEnvelope`] should contain [`GroupTransactionsRequest`] |
| GetAccountSet | [RequestEnvelope](#m10-sdk-RequestEnvelope) | [model.AccountSet](#m10-sdk-model-AccountSet) | AccountSet |
| ListAccountSets | [RequestEnvelope](#m10-sdk-RequestEnvelope) | [ListAccountSetsResponse](#m10-sdk-ListAccountSetsResponse) |  |
| GetRoleBinding | [RequestEnvelope](#m10-sdk-RequestEnvelope) | [RoleBinding](#m10-sdk-RoleBinding) | RoleBinding |
| ListRoleBindings | [RequestEnvelope](#m10-sdk-RequestEnvelope) | [ListRoleBindingsResponse](#m10-sdk-ListRoleBindingsResponse) |  |
| GetRole | [RequestEnvelope](#m10-sdk-RequestEnvelope) | [Role](#m10-sdk-Role) | RoleBinding |
| ListRoles | [RequestEnvelope](#m10-sdk-RequestEnvelope) | [ListRolesResponse](#m10-sdk-ListRolesResponse) |  |
| ObserveResources | [RequestEnvelope](#m10-sdk-RequestEnvelope) | [FinalizedTransactions](#m10-sdk-FinalizedTransactions) stream | Resources Request to observe all resources processed by the M10 ledger Param: [`RequestEnvelope`] should contain [`ObserveResourcesRequest`] |


<a name="m10-sdk-M10TxService"></a>

### M10TxService


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| CreateTransaction | [RequestEnvelope](#m10-sdk-RequestEnvelope) | [transaction.TransactionResponse](#m10-sdk-transaction-TransactionResponse) |  |

 



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

