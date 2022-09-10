# CommentApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addComment**](CommentApi.md#addComment) | **POST** /comment | Add a new comment
[**deleteComment**](CommentApi.md#deleteComment) | **DELETE** /comment/{commentId} | Deletes a comment
[**getCommentById**](CommentApi.md#getCommentById) | **GET** /comment/{commentId} | Find comment by ID
[**updateComment**](CommentApi.md#updateComment) | **PUT** /comment | Update an existing comment
[**updateCommentWithForm**](CommentApi.md#updateCommentWithForm) | **POST** /comment/{commentId} | Updates a comment with form data



## addComment

> addComment(comment)

Add a new comment

### Example

```java
// Import classes:
//import org.openapitools.client.api.CommentApi;

CommentApi apiInstance = new CommentApi();
Comment comment = new Comment(); // Comment | Comment object that needs to be added
try {
    apiInstance.addComment(comment);
} catch (ApiException e) {
    System.err.println("Exception when calling CommentApi#addComment");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **comment** | [**Comment**](Comment.md)| Comment object that needs to be added |

### Return type

null (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: Not defined


## deleteComment

> deleteComment(commentId, apiKey)

Deletes a comment

### Example

```java
// Import classes:
//import org.openapitools.client.api.CommentApi;

CommentApi apiInstance = new CommentApi();
String commentId = null; // String | Comment id to delete
String apiKey = null; // String | 
try {
    apiInstance.deleteComment(commentId, apiKey);
} catch (ApiException e) {
    System.err.println("Exception when calling CommentApi#deleteComment");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **commentId** | **String**| Comment id to delete | [default to null]
 **apiKey** | **String**|  | [optional] [default to null]

### Return type

null (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## getCommentById

> Comment getCommentById(commentId)

Find comment by ID

Returns a single comment

### Example

```java
// Import classes:
//import org.openapitools.client.api.CommentApi;

CommentApi apiInstance = new CommentApi();
String commentId = null; // String | ID of comment to return
try {
    Comment result = apiInstance.getCommentById(commentId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CommentApi#getCommentById");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **commentId** | **String**| ID of comment to return | [default to null]

### Return type

[**Comment**](Comment.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## updateComment

> updateComment(comment)

Update an existing comment

### Example

```java
// Import classes:
//import org.openapitools.client.api.CommentApi;

CommentApi apiInstance = new CommentApi();
Comment comment = new Comment(); // Comment | Comment object that needs to be added
try {
    apiInstance.updateComment(comment);
} catch (ApiException e) {
    System.err.println("Exception when calling CommentApi#updateComment");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **comment** | [**Comment**](Comment.md)| Comment object that needs to be added |

### Return type

null (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: Not defined


## updateCommentWithForm

> updateCommentWithForm(commentId, userId, postId, blogId, parentId, authorDisplayName, createdTimestamp, modifiedTimestamp, content, status, downvoteCount, upvoteCount, media)

Updates a comment with form data

### Example

```java
// Import classes:
//import org.openapitools.client.api.CommentApi;

CommentApi apiInstance = new CommentApi();
String commentId = null; // String | ID of comment that needs to be updated
String userId = null; // String | 
String postId = null; // String | 
String blogId = null; // String | 
String parentId = null; // String | 
String authorDisplayName = null; // String | 
Date createdTimestamp = null; // Date | 
Date modifiedTimestamp = null; // Date | 
String content = null; // String | 
String status = null; // String | 
Integer downvoteCount = null; // Integer | 
Integer upvoteCount = null; // Integer | 
Media media = null; // Media | 
try {
    apiInstance.updateCommentWithForm(commentId, userId, postId, blogId, parentId, authorDisplayName, createdTimestamp, modifiedTimestamp, content, status, downvoteCount, upvoteCount, media);
} catch (ApiException e) {
    System.err.println("Exception when calling CommentApi#updateCommentWithForm");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **commentId** | **String**| ID of comment that needs to be updated | [default to null]
 **userId** | **String**|  | [optional] [default to null]
 **postId** | **String**|  | [optional] [default to null]
 **blogId** | **String**|  | [optional] [default to null]
 **parentId** | **String**|  | [optional] [default to null]
 **authorDisplayName** | **String**|  | [optional] [default to null]
 **createdTimestamp** | **Date**|  | [optional] [default to null]
 **modifiedTimestamp** | **Date**|  | [optional] [default to null]
 **content** | **String**|  | [optional] [default to null]
 **status** | **String**|  | [optional] [default to null] [enum: Draft, InReview, Flagged, Published]
 **downvoteCount** | **Integer**|  | [optional] [default to null]
 **upvoteCount** | **Integer**|  | [optional] [default to null]
 **media** | [**Media**](Media.md)|  | [optional] [default to null]

### Return type

null (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: Not defined

