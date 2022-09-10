# \PostApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_post**](PostApi.md#add_post) | **POST** /post | Add a new post
[**delete_post**](PostApi.md#delete_post) | **DELETE** /post/{postId} | Deletes a post
[**get_post_by_id**](PostApi.md#get_post_by_id) | **GET** /post/{postId} | Find post by ID
[**update_post**](PostApi.md#update_post) | **PUT** /post | Update an existing post
[**update_post_with_form**](PostApi.md#update_post_with_form) | **POST** /post/{postId} | Updates a post with form data



## add_post

> add_post(post)
Add a new post

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**post** | Option<[**Post**](Post.md)> | Post object that needs to be added |  |

### Return type

 (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## delete_post

> delete_post(post_id, api_key)
Deletes a post

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**post_id** | **String** | Post id to delete | [required] |
**api_key** | Option<**String**> |  |  |

### Return type

 (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_post_by_id

> crate::models::Post get_post_by_id(post_id)
Find post by ID

Returns a single post

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**post_id** | **String** | ID of post to return | [required] |

### Return type

[**crate::models::Post**](Post.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## update_post

> update_post(post)
Update an existing post

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**post** | Option<[**Post**](Post.md)> | Post object that needs to be added |  |

### Return type

 (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## update_post_with_form

> update_post_with_form(post_id, title, url, excerpt, content, comment_status, post_type)
Updates a post with form data

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**post_id** | **String** | ID of post that needs to be updated | [required] |
**title** | Option<**String**> |  |  |
**url** | Option<**String**> |  |  |
**excerpt** | Option<**String**> |  |  |
**content** | Option<**String**> |  |  |
**comment_status** | Option<**String**> |  |  |
**post_type** | Option<**String**> |  |  |

### Return type

 (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

