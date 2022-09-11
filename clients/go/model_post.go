/*
Open APi

This is a sample server. 

API version: 1.0.0
Contact: email@gmail.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package comments

import (
	"encoding/json"
)

// Post struct for Post
type Post struct {
	Id *string `json:"id,omitempty"`
	Title *string `json:"title,omitempty"`
	Url *string `json:"url,omitempty"`
	Excerpt *string `json:"excerpt,omitempty"`
	Content *string `json:"content,omitempty"`
	CommentStatus *string `json:"commentStatus,omitempty"`
	PostType *string `json:"postType,omitempty"`
}

// NewPost instantiates a new Post object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewPost() *Post {
	this := Post{}
	return &this
}

// NewPostWithDefaults instantiates a new Post object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewPostWithDefaults() *Post {
	this := Post{}
	return &this
}

// GetId returns the Id field value if set, zero value otherwise.
func (o *Post) GetId() string {
	if o == nil || o.Id == nil {
		var ret string
		return ret
	}
	return *o.Id
}

// GetIdOk returns a tuple with the Id field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Post) GetIdOk() (*string, bool) {
	if o == nil || o.Id == nil {
		return nil, false
	}
	return o.Id, true
}

// HasId returns a boolean if a field has been set.
func (o *Post) HasId() bool {
	if o != nil && o.Id != nil {
		return true
	}

	return false
}

// SetId gets a reference to the given string and assigns it to the Id field.
func (o *Post) SetId(v string) {
	o.Id = &v
}

// GetTitle returns the Title field value if set, zero value otherwise.
func (o *Post) GetTitle() string {
	if o == nil || o.Title == nil {
		var ret string
		return ret
	}
	return *o.Title
}

// GetTitleOk returns a tuple with the Title field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Post) GetTitleOk() (*string, bool) {
	if o == nil || o.Title == nil {
		return nil, false
	}
	return o.Title, true
}

// HasTitle returns a boolean if a field has been set.
func (o *Post) HasTitle() bool {
	if o != nil && o.Title != nil {
		return true
	}

	return false
}

// SetTitle gets a reference to the given string and assigns it to the Title field.
func (o *Post) SetTitle(v string) {
	o.Title = &v
}

// GetUrl returns the Url field value if set, zero value otherwise.
func (o *Post) GetUrl() string {
	if o == nil || o.Url == nil {
		var ret string
		return ret
	}
	return *o.Url
}

// GetUrlOk returns a tuple with the Url field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Post) GetUrlOk() (*string, bool) {
	if o == nil || o.Url == nil {
		return nil, false
	}
	return o.Url, true
}

// HasUrl returns a boolean if a field has been set.
func (o *Post) HasUrl() bool {
	if o != nil && o.Url != nil {
		return true
	}

	return false
}

// SetUrl gets a reference to the given string and assigns it to the Url field.
func (o *Post) SetUrl(v string) {
	o.Url = &v
}

// GetExcerpt returns the Excerpt field value if set, zero value otherwise.
func (o *Post) GetExcerpt() string {
	if o == nil || o.Excerpt == nil {
		var ret string
		return ret
	}
	return *o.Excerpt
}

// GetExcerptOk returns a tuple with the Excerpt field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Post) GetExcerptOk() (*string, bool) {
	if o == nil || o.Excerpt == nil {
		return nil, false
	}
	return o.Excerpt, true
}

// HasExcerpt returns a boolean if a field has been set.
func (o *Post) HasExcerpt() bool {
	if o != nil && o.Excerpt != nil {
		return true
	}

	return false
}

// SetExcerpt gets a reference to the given string and assigns it to the Excerpt field.
func (o *Post) SetExcerpt(v string) {
	o.Excerpt = &v
}

// GetContent returns the Content field value if set, zero value otherwise.
func (o *Post) GetContent() string {
	if o == nil || o.Content == nil {
		var ret string
		return ret
	}
	return *o.Content
}

// GetContentOk returns a tuple with the Content field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Post) GetContentOk() (*string, bool) {
	if o == nil || o.Content == nil {
		return nil, false
	}
	return o.Content, true
}

// HasContent returns a boolean if a field has been set.
func (o *Post) HasContent() bool {
	if o != nil && o.Content != nil {
		return true
	}

	return false
}

// SetContent gets a reference to the given string and assigns it to the Content field.
func (o *Post) SetContent(v string) {
	o.Content = &v
}

// GetCommentStatus returns the CommentStatus field value if set, zero value otherwise.
func (o *Post) GetCommentStatus() string {
	if o == nil || o.CommentStatus == nil {
		var ret string
		return ret
	}
	return *o.CommentStatus
}

// GetCommentStatusOk returns a tuple with the CommentStatus field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Post) GetCommentStatusOk() (*string, bool) {
	if o == nil || o.CommentStatus == nil {
		return nil, false
	}
	return o.CommentStatus, true
}

// HasCommentStatus returns a boolean if a field has been set.
func (o *Post) HasCommentStatus() bool {
	if o != nil && o.CommentStatus != nil {
		return true
	}

	return false
}

// SetCommentStatus gets a reference to the given string and assigns it to the CommentStatus field.
func (o *Post) SetCommentStatus(v string) {
	o.CommentStatus = &v
}

// GetPostType returns the PostType field value if set, zero value otherwise.
func (o *Post) GetPostType() string {
	if o == nil || o.PostType == nil {
		var ret string
		return ret
	}
	return *o.PostType
}

// GetPostTypeOk returns a tuple with the PostType field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Post) GetPostTypeOk() (*string, bool) {
	if o == nil || o.PostType == nil {
		return nil, false
	}
	return o.PostType, true
}

// HasPostType returns a boolean if a field has been set.
func (o *Post) HasPostType() bool {
	if o != nil && o.PostType != nil {
		return true
	}

	return false
}

// SetPostType gets a reference to the given string and assigns it to the PostType field.
func (o *Post) SetPostType(v string) {
	o.PostType = &v
}

func (o Post) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.Id != nil {
		toSerialize["id"] = o.Id
	}
	if o.Title != nil {
		toSerialize["title"] = o.Title
	}
	if o.Url != nil {
		toSerialize["url"] = o.Url
	}
	if o.Excerpt != nil {
		toSerialize["excerpt"] = o.Excerpt
	}
	if o.Content != nil {
		toSerialize["content"] = o.Content
	}
	if o.CommentStatus != nil {
		toSerialize["commentStatus"] = o.CommentStatus
	}
	if o.PostType != nil {
		toSerialize["postType"] = o.PostType
	}
	return json.Marshal(toSerialize)
}

type NullablePost struct {
	value *Post
	isSet bool
}

func (v NullablePost) Get() *Post {
	return v.value
}

func (v *NullablePost) Set(val *Post) {
	v.value = val
	v.isSet = true
}

func (v NullablePost) IsSet() bool {
	return v.isSet
}

func (v *NullablePost) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullablePost(val *Post) *NullablePost {
	return &NullablePost{value: val, isSet: true}
}

func (v NullablePost) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullablePost) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


