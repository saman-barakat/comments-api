# openapi.api.CommentApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addComment**](CommentApi.md#addcomment) | **POST** /comment | Add a new comment
[**deleteComment**](CommentApi.md#deletecomment) | **DELETE** /comment/{commentId} | Deletes a comment
[**getCommentById**](CommentApi.md#getcommentbyid) | **GET** /comment/{commentId} | Find comment by ID
[**updateComment**](CommentApi.md#updatecomment) | **PUT** /comment | Update an existing comment
[**updateCommentWithForm**](CommentApi.md#updatecommentwithform) | **POST** /comment/{commentId} | Updates a comment with form data


# **addComment**
> addComment(comment)

Add a new comment

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: cm_auth
//defaultApiClient.getAuthentication<OAuth>('cm_auth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = CommentApi();
final comment = Comment(); // Comment | Comment object that needs to be added

try {
    api_instance.addComment(comment);
} catch (e) {
    print('Exception when calling CommentApi->addComment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **comment** | [**Comment**](Comment.md)| Comment object that needs to be added | 

### Return type

void (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteComment**
> deleteComment(commentId, apiKey)

Deletes a comment

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: cm_auth
//defaultApiClient.getAuthentication<OAuth>('cm_auth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = CommentApi();
final commentId = commentId_example; // String | Comment id to delete
final apiKey = apiKey_example; // String | 

try {
    api_instance.deleteComment(commentId, apiKey);
} catch (e) {
    print('Exception when calling CommentApi->deleteComment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **commentId** | **String**| Comment id to delete | 
 **apiKey** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCommentById**
> Comment getCommentById(commentId)

Find comment by ID

Returns a single comment

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api_instance = CommentApi();
final commentId = commentId_example; // String | ID of comment to return

try {
    final result = api_instance.getCommentById(commentId);
    print(result);
} catch (e) {
    print('Exception when calling CommentApi->getCommentById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **commentId** | **String**| ID of comment to return | 

### Return type

[**Comment**](Comment.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateComment**
> updateComment(comment)

Update an existing comment

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: cm_auth
//defaultApiClient.getAuthentication<OAuth>('cm_auth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = CommentApi();
final comment = Comment(); // Comment | Comment object that needs to be added

try {
    api_instance.updateComment(comment);
} catch (e) {
    print('Exception when calling CommentApi->updateComment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **comment** | [**Comment**](Comment.md)| Comment object that needs to be added | 

### Return type

void (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCommentWithForm**
> updateCommentWithForm(commentId, userId, postId, blogId, parentId, authorDisplayName, createdTimestamp, modifiedTimestamp, content, status, downvoteCount, upvoteCount, media)

Updates a comment with form data

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: cm_auth
//defaultApiClient.getAuthentication<OAuth>('cm_auth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = CommentApi();
final commentId = commentId_example; // String | ID of comment that needs to be updated
final userId = userId_example; // String | 
final postId = postId_example; // String | 
final blogId = blogId_example; // String | 
final parentId = parentId_example; // String | 
final authorDisplayName = authorDisplayName_example; // String | 
final createdTimestamp = 2013-10-20T19:20:30+01:00; // DateTime | 
final modifiedTimestamp = 2013-10-20T19:20:30+01:00; // DateTime | 
final content = content_example; // String | 
final status = status_example; // String | 
final downvoteCount = 56; // int | 
final upvoteCount = 56; // int | 
final media = ; // Media | 

try {
    api_instance.updateCommentWithForm(commentId, userId, postId, blogId, parentId, authorDisplayName, createdTimestamp, modifiedTimestamp, content, status, downvoteCount, upvoteCount, media);
} catch (e) {
    print('Exception when calling CommentApi->updateCommentWithForm: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **commentId** | **String**| ID of comment that needs to be updated | 
 **userId** | **String**|  | [optional] 
 **postId** | **String**|  | [optional] 
 **blogId** | **String**|  | [optional] 
 **parentId** | **String**|  | [optional] 
 **authorDisplayName** | **String**|  | [optional] 
 **createdTimestamp** | **DateTime**|  | [optional] 
 **modifiedTimestamp** | **DateTime**|  | [optional] 
 **content** | **String**|  | [optional] 
 **status** | **String**|  | [optional] 
 **downvoteCount** | **int**|  | [optional] 
 **upvoteCount** | **int**|  | [optional] 
 **media** | [**Media**](Media.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

