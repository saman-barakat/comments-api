# Comment

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **string** |  | [optional] 
**UserId** | Pointer to **string** |  | [optional] 
**PostId** | Pointer to **string** |  | [optional] 
**BlogId** | Pointer to **string** |  | [optional] 
**ParentId** | Pointer to **string** |  | [optional] 
**AuthorDisplayName** | Pointer to **string** |  | [optional] 
**CreatedTimestamp** | Pointer to **time.Time** |  | [optional] 
**ModifiedTimestamp** | Pointer to **time.Time** |  | [optional] 
**Content** | Pointer to **string** |  | [optional] 
**Status** | Pointer to **string** |  | [optional] 
**DownvoteCount** | Pointer to **int32** |  | [optional] 
**UpvoteCount** | Pointer to **int32** |  | [optional] 
**Media** | Pointer to [**Media**](Media.md) |  | [optional] 

## Methods

### NewComment

`func NewComment() *Comment`

NewComment instantiates a new Comment object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCommentWithDefaults

`func NewCommentWithDefaults() *Comment`

NewCommentWithDefaults instantiates a new Comment object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *Comment) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *Comment) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *Comment) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *Comment) HasId() bool`

HasId returns a boolean if a field has been set.

### GetUserId

`func (o *Comment) GetUserId() string`

GetUserId returns the UserId field if non-nil, zero value otherwise.

### GetUserIdOk

`func (o *Comment) GetUserIdOk() (*string, bool)`

GetUserIdOk returns a tuple with the UserId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUserId

`func (o *Comment) SetUserId(v string)`

SetUserId sets UserId field to given value.

### HasUserId

`func (o *Comment) HasUserId() bool`

HasUserId returns a boolean if a field has been set.

### GetPostId

`func (o *Comment) GetPostId() string`

GetPostId returns the PostId field if non-nil, zero value otherwise.

### GetPostIdOk

`func (o *Comment) GetPostIdOk() (*string, bool)`

GetPostIdOk returns a tuple with the PostId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPostId

`func (o *Comment) SetPostId(v string)`

SetPostId sets PostId field to given value.

### HasPostId

`func (o *Comment) HasPostId() bool`

HasPostId returns a boolean if a field has been set.

### GetBlogId

`func (o *Comment) GetBlogId() string`

GetBlogId returns the BlogId field if non-nil, zero value otherwise.

### GetBlogIdOk

`func (o *Comment) GetBlogIdOk() (*string, bool)`

GetBlogIdOk returns a tuple with the BlogId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlogId

`func (o *Comment) SetBlogId(v string)`

SetBlogId sets BlogId field to given value.

### HasBlogId

`func (o *Comment) HasBlogId() bool`

HasBlogId returns a boolean if a field has been set.

### GetParentId

`func (o *Comment) GetParentId() string`

GetParentId returns the ParentId field if non-nil, zero value otherwise.

### GetParentIdOk

`func (o *Comment) GetParentIdOk() (*string, bool)`

GetParentIdOk returns a tuple with the ParentId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetParentId

`func (o *Comment) SetParentId(v string)`

SetParentId sets ParentId field to given value.

### HasParentId

`func (o *Comment) HasParentId() bool`

HasParentId returns a boolean if a field has been set.

### GetAuthorDisplayName

`func (o *Comment) GetAuthorDisplayName() string`

GetAuthorDisplayName returns the AuthorDisplayName field if non-nil, zero value otherwise.

### GetAuthorDisplayNameOk

`func (o *Comment) GetAuthorDisplayNameOk() (*string, bool)`

GetAuthorDisplayNameOk returns a tuple with the AuthorDisplayName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuthorDisplayName

`func (o *Comment) SetAuthorDisplayName(v string)`

SetAuthorDisplayName sets AuthorDisplayName field to given value.

### HasAuthorDisplayName

`func (o *Comment) HasAuthorDisplayName() bool`

HasAuthorDisplayName returns a boolean if a field has been set.

### GetCreatedTimestamp

`func (o *Comment) GetCreatedTimestamp() time.Time`

GetCreatedTimestamp returns the CreatedTimestamp field if non-nil, zero value otherwise.

### GetCreatedTimestampOk

`func (o *Comment) GetCreatedTimestampOk() (*time.Time, bool)`

GetCreatedTimestampOk returns a tuple with the CreatedTimestamp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedTimestamp

`func (o *Comment) SetCreatedTimestamp(v time.Time)`

SetCreatedTimestamp sets CreatedTimestamp field to given value.

### HasCreatedTimestamp

`func (o *Comment) HasCreatedTimestamp() bool`

HasCreatedTimestamp returns a boolean if a field has been set.

### GetModifiedTimestamp

`func (o *Comment) GetModifiedTimestamp() time.Time`

GetModifiedTimestamp returns the ModifiedTimestamp field if non-nil, zero value otherwise.

### GetModifiedTimestampOk

`func (o *Comment) GetModifiedTimestampOk() (*time.Time, bool)`

GetModifiedTimestampOk returns a tuple with the ModifiedTimestamp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetModifiedTimestamp

`func (o *Comment) SetModifiedTimestamp(v time.Time)`

SetModifiedTimestamp sets ModifiedTimestamp field to given value.

### HasModifiedTimestamp

`func (o *Comment) HasModifiedTimestamp() bool`

HasModifiedTimestamp returns a boolean if a field has been set.

### GetContent

`func (o *Comment) GetContent() string`

GetContent returns the Content field if non-nil, zero value otherwise.

### GetContentOk

`func (o *Comment) GetContentOk() (*string, bool)`

GetContentOk returns a tuple with the Content field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetContent

`func (o *Comment) SetContent(v string)`

SetContent sets Content field to given value.

### HasContent

`func (o *Comment) HasContent() bool`

HasContent returns a boolean if a field has been set.

### GetStatus

`func (o *Comment) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *Comment) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *Comment) SetStatus(v string)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *Comment) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetDownvoteCount

`func (o *Comment) GetDownvoteCount() int32`

GetDownvoteCount returns the DownvoteCount field if non-nil, zero value otherwise.

### GetDownvoteCountOk

`func (o *Comment) GetDownvoteCountOk() (*int32, bool)`

GetDownvoteCountOk returns a tuple with the DownvoteCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDownvoteCount

`func (o *Comment) SetDownvoteCount(v int32)`

SetDownvoteCount sets DownvoteCount field to given value.

### HasDownvoteCount

`func (o *Comment) HasDownvoteCount() bool`

HasDownvoteCount returns a boolean if a field has been set.

### GetUpvoteCount

`func (o *Comment) GetUpvoteCount() int32`

GetUpvoteCount returns the UpvoteCount field if non-nil, zero value otherwise.

### GetUpvoteCountOk

`func (o *Comment) GetUpvoteCountOk() (*int32, bool)`

GetUpvoteCountOk returns a tuple with the UpvoteCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpvoteCount

`func (o *Comment) SetUpvoteCount(v int32)`

SetUpvoteCount sets UpvoteCount field to given value.

### HasUpvoteCount

`func (o *Comment) HasUpvoteCount() bool`

HasUpvoteCount returns a boolean if a field has been set.

### GetMedia

`func (o *Comment) GetMedia() Media`

GetMedia returns the Media field if non-nil, zero value otherwise.

### GetMediaOk

`func (o *Comment) GetMediaOk() (*Media, bool)`

GetMediaOk returns a tuple with the Media field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMedia

`func (o *Comment) SetMedia(v Media)`

SetMedia sets Media field to given value.

### HasMedia

`func (o *Comment) HasMedia() bool`

HasMedia returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


