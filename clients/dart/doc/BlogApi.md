# openapi.api.BlogApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addBlog**](BlogApi.md#addblog) | **POST** /blog | Add a new blog
[**deleteBlog**](BlogApi.md#deleteblog) | **DELETE** /blog/{blogId} | Deletes a blog
[**getBlogById**](BlogApi.md#getblogbyid) | **GET** /blog/{blogId} | Find blog by ID
[**updateBlog**](BlogApi.md#updateblog) | **PUT** /blog | Update an existing blog
[**updateBlogWithForm**](BlogApi.md#updateblogwithform) | **POST** /blog/{blogId} | Updates a blog with form data


# **addBlog**
> addBlog(blog)

Add a new blog

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: cm_auth
//defaultApiClient.getAuthentication<OAuth>('cm_auth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = BlogApi();
final blog = Blog(); // Blog | Blog object that needs to be added

try {
    api_instance.addBlog(blog);
} catch (e) {
    print('Exception when calling BlogApi->addBlog: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blog** | [**Blog**](Blog.md)| Blog object that needs to be added | [optional] 

### Return type

void (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteBlog**
> deleteBlog(blogId, apiKey)

Deletes a blog

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: cm_auth
//defaultApiClient.getAuthentication<OAuth>('cm_auth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = BlogApi();
final blogId = blogId_example; // String | Blog id to delete
final apiKey = apiKey_example; // String | 

try {
    api_instance.deleteBlog(blogId, apiKey);
} catch (e) {
    print('Exception when calling BlogApi->deleteBlog: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blogId** | **String**| Blog id to delete | 
 **apiKey** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBlogById**
> Blog getBlogById(blogId)

Find blog by ID

Returns a single blog

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api_instance = BlogApi();
final blogId = blogId_example; // String | ID of blog to return

try {
    final result = api_instance.getBlogById(blogId);
    print(result);
} catch (e) {
    print('Exception when calling BlogApi->getBlogById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blogId** | **String**| ID of blog to return | 

### Return type

[**Blog**](Blog.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateBlog**
> updateBlog(blog)

Update an existing blog

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: cm_auth
//defaultApiClient.getAuthentication<OAuth>('cm_auth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = BlogApi();
final blog = Blog(); // Blog | Blog object that needs to be added

try {
    api_instance.updateBlog(blog);
} catch (e) {
    print('Exception when calling BlogApi->updateBlog: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blog** | [**Blog**](Blog.md)| Blog object that needs to be added | [optional] 

### Return type

void (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateBlogWithForm**
> updateBlogWithForm(blogId, name, url, authToken, commentStatus)

Updates a blog with form data

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: cm_auth
//defaultApiClient.getAuthentication<OAuth>('cm_auth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = BlogApi();
final blogId = blogId_example; // String | ID of blog that needs to be updated
final name = name_example; // String | 
final url = url_example; // String | 
final authToken = authToken_example; // String | 
final commentStatus = commentStatus_example; // String | 

try {
    api_instance.updateBlogWithForm(blogId, name, url, authToken, commentStatus);
} catch (e) {
    print('Exception when calling BlogApi->updateBlogWithForm: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blogId** | **String**| ID of blog that needs to be updated | 
 **name** | **String**|  | [optional] 
 **url** | **String**|  | [optional] 
 **authToken** | **String**|  | [optional] 
 **commentStatus** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

