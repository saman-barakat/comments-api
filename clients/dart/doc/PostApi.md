# openapi.api.PostApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addPost**](PostApi.md#addpost) | **POST** /post | Add a new post
[**deletePost**](PostApi.md#deletepost) | **DELETE** /post/{postId} | Deletes a post
[**getPostById**](PostApi.md#getpostbyid) | **GET** /post/{postId} | Find post by ID
[**updatePost**](PostApi.md#updatepost) | **PUT** /post | Update an existing post
[**updatePostWithForm**](PostApi.md#updatepostwithform) | **POST** /post/{postId} | Updates a post with form data


# **addPost**
> addPost(post)

Add a new post

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: cm_auth
//defaultApiClient.getAuthentication<OAuth>('cm_auth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = PostApi();
final post = Post(); // Post | Post object that needs to be added

try {
    api_instance.addPost(post);
} catch (e) {
    print('Exception when calling PostApi->addPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **post** | [**Post**](Post.md)| Post object that needs to be added | [optional] 

### Return type

void (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePost**
> deletePost(postId, apiKey)

Deletes a post

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: cm_auth
//defaultApiClient.getAuthentication<OAuth>('cm_auth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = PostApi();
final postId = postId_example; // String | Post id to delete
final apiKey = apiKey_example; // String | 

try {
    api_instance.deletePost(postId, apiKey);
} catch (e) {
    print('Exception when calling PostApi->deletePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postId** | **String**| Post id to delete | 
 **apiKey** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPostById**
> Post getPostById(postId)

Find post by ID

Returns a single post

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api_instance = PostApi();
final postId = postId_example; // String | ID of post to return

try {
    final result = api_instance.getPostById(postId);
    print(result);
} catch (e) {
    print('Exception when calling PostApi->getPostById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postId** | **String**| ID of post to return | 

### Return type

[**Post**](Post.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePost**
> updatePost(post)

Update an existing post

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: cm_auth
//defaultApiClient.getAuthentication<OAuth>('cm_auth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = PostApi();
final post = Post(); // Post | Post object that needs to be added

try {
    api_instance.updatePost(post);
} catch (e) {
    print('Exception when calling PostApi->updatePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **post** | [**Post**](Post.md)| Post object that needs to be added | [optional] 

### Return type

void (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePostWithForm**
> updatePostWithForm(postId, title, url, excerpt, content, commentStatus, postType)

Updates a post with form data

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: cm_auth
//defaultApiClient.getAuthentication<OAuth>('cm_auth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = PostApi();
final postId = postId_example; // String | ID of post that needs to be updated
final title = title_example; // String | 
final url = url_example; // String | 
final excerpt = excerpt_example; // String | 
final content = content_example; // String | 
final commentStatus = commentStatus_example; // String | 
final postType = postType_example; // String | 

try {
    api_instance.updatePostWithForm(postId, title, url, excerpt, content, commentStatus, postType);
} catch (e) {
    print('Exception when calling PostApi->updatePostWithForm: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postId** | **String**| ID of post that needs to be updated | 
 **title** | **String**|  | [optional] 
 **url** | **String**|  | [optional] 
 **excerpt** | **String**|  | [optional] 
 **content** | **String**|  | [optional] 
 **commentStatus** | **String**|  | [optional] 
 **postType** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

