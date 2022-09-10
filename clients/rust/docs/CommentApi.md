# \CommentApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_comment**](CommentApi.md#add_comment) | **POST** /comment | Add a new comment
[**delete_comment**](CommentApi.md#delete_comment) | **DELETE** /comment/{commentId} | Deletes a comment
[**get_comment_by_id**](CommentApi.md#get_comment_by_id) | **GET** /comment/{commentId} | Find comment by ID
[**update_comment**](CommentApi.md#update_comment) | **PUT** /comment | Update an existing comment
[**update_comment_with_form**](CommentApi.md#update_comment_with_form) | **POST** /comment/{commentId} | Updates a comment with form data



## add_comment

> add_comment(comment)
Add a new comment

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**comment** | [**Comment**](Comment.md) | Comment object that needs to be added | [required] |

### Return type

 (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## delete_comment

> delete_comment(comment_id, api_key)
Deletes a comment

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**comment_id** | **String** | Comment id to delete | [required] |
**api_key** | Option<**String**> |  |  |

### Return type

 (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_comment_by_id

> crate::models::Comment get_comment_by_id(comment_id)
Find comment by ID

Returns a single comment

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**comment_id** | **String** | ID of comment to return | [required] |

### Return type

[**crate::models::Comment**](Comment.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## update_comment

> update_comment(comment)
Update an existing comment

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**comment** | [**Comment**](Comment.md) | Comment object that needs to be added | [required] |

### Return type

 (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## update_comment_with_form

> update_comment_with_form(comment_id, user_id, post_id, blog_id, parent_id, author_display_name, created_timestamp, modified_timestamp, content, status, downvote_count, upvote_count, media)
Updates a comment with form data

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**comment_id** | **String** | ID of comment that needs to be updated | [required] |
**user_id** | Option<**String**> |  |  |
**post_id** | Option<**String**> |  |  |
**blog_id** | Option<**String**> |  |  |
**parent_id** | Option<**String**> |  |  |
**author_display_name** | Option<**String**> |  |  |
**created_timestamp** | Option<**String**> |  |  |
**modified_timestamp** | Option<**String**> |  |  |
**content** | Option<**String**> |  |  |
**status** | Option<**String**> |  |  |
**downvote_count** | Option<**i32**> |  |  |
**upvote_count** | Option<**i32**> |  |  |
**media** | Option<[**crate::models::Media**](Media.md)> |  |  |

### Return type

 (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

