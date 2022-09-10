# \BlogApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_blog**](BlogApi.md#add_blog) | **POST** /blog | Add a new blog
[**delete_blog**](BlogApi.md#delete_blog) | **DELETE** /blog/{blogId} | Deletes a blog
[**get_blog_by_id**](BlogApi.md#get_blog_by_id) | **GET** /blog/{blogId} | Find blog by ID
[**update_blog**](BlogApi.md#update_blog) | **PUT** /blog | Update an existing blog
[**update_blog_with_form**](BlogApi.md#update_blog_with_form) | **POST** /blog/{blogId} | Updates a blog with form data



## add_blog

> add_blog(blog)
Add a new blog

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**blog** | Option<[**Blog**](Blog.md)> | Blog object that needs to be added |  |

### Return type

 (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## delete_blog

> delete_blog(blog_id, api_key)
Deletes a blog

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**blog_id** | **String** | Blog id to delete | [required] |
**api_key** | Option<**String**> |  |  |

### Return type

 (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_blog_by_id

> crate::models::Blog get_blog_by_id(blog_id)
Find blog by ID

Returns a single blog

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**blog_id** | **String** | ID of blog to return | [required] |

### Return type

[**crate::models::Blog**](Blog.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## update_blog

> update_blog(blog)
Update an existing blog

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**blog** | Option<[**Blog**](Blog.md)> | Blog object that needs to be added |  |

### Return type

 (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## update_blog_with_form

> update_blog_with_form(blog_id, name, url, auth_token, comment_status)
Updates a blog with form data

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**blog_id** | **String** | ID of blog that needs to be updated | [required] |
**name** | Option<**String**> |  |  |
**url** | Option<**String**> |  |  |
**auth_token** | Option<**String**> |  |  |
**comment_status** | Option<**String**> |  |  |

### Return type

 (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

