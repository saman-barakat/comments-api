# VerificationStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IsVerified** | Pointer to **bool** |  | [optional] 
**VerificationTimestamp** | Pointer to **time.Time** |  | [optional] 
**VerificationMethod** | Pointer to **string** |  | [optional] 

## Methods

### NewVerificationStatus

`func NewVerificationStatus() *VerificationStatus`

NewVerificationStatus instantiates a new VerificationStatus object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewVerificationStatusWithDefaults

`func NewVerificationStatusWithDefaults() *VerificationStatus`

NewVerificationStatusWithDefaults instantiates a new VerificationStatus object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetIsVerified

`func (o *VerificationStatus) GetIsVerified() bool`

GetIsVerified returns the IsVerified field if non-nil, zero value otherwise.

### GetIsVerifiedOk

`func (o *VerificationStatus) GetIsVerifiedOk() (*bool, bool)`

GetIsVerifiedOk returns a tuple with the IsVerified field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsVerified

`func (o *VerificationStatus) SetIsVerified(v bool)`

SetIsVerified sets IsVerified field to given value.

### HasIsVerified

`func (o *VerificationStatus) HasIsVerified() bool`

HasIsVerified returns a boolean if a field has been set.

### GetVerificationTimestamp

`func (o *VerificationStatus) GetVerificationTimestamp() time.Time`

GetVerificationTimestamp returns the VerificationTimestamp field if non-nil, zero value otherwise.

### GetVerificationTimestampOk

`func (o *VerificationStatus) GetVerificationTimestampOk() (*time.Time, bool)`

GetVerificationTimestampOk returns a tuple with the VerificationTimestamp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVerificationTimestamp

`func (o *VerificationStatus) SetVerificationTimestamp(v time.Time)`

SetVerificationTimestamp sets VerificationTimestamp field to given value.

### HasVerificationTimestamp

`func (o *VerificationStatus) HasVerificationTimestamp() bool`

HasVerificationTimestamp returns a boolean if a field has been set.

### GetVerificationMethod

`func (o *VerificationStatus) GetVerificationMethod() string`

GetVerificationMethod returns the VerificationMethod field if non-nil, zero value otherwise.

### GetVerificationMethodOk

`func (o *VerificationStatus) GetVerificationMethodOk() (*string, bool)`

GetVerificationMethodOk returns a tuple with the VerificationMethod field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVerificationMethod

`func (o *VerificationStatus) SetVerificationMethod(v string)`

SetVerificationMethod sets VerificationMethod field to given value.

### HasVerificationMethod

`func (o *VerificationStatus) HasVerificationMethod() bool`

HasVerificationMethod returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


