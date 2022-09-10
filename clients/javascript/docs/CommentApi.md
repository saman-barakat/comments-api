# OpenApi.CommentApi

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

```javascript
import OpenApi from 'open_api';
let defaultClient = OpenApi.ApiClient.instance;
// Configure OAuth2 access token for authorization: cm_auth
let cm_auth = defaultClient.authentications['cm_auth'];
cm_auth.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new OpenApi.CommentApi();
let comment = new OpenApi.Comment(); // Comment | Comment object that needs to be added
apiInstance.addComment(comment, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
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

> deleteComment(commentId, opts)

Deletes a comment

### Example

```javascript
import OpenApi from 'open_api';
let defaultClient = OpenApi.ApiClient.instance;
// Configure OAuth2 access token for authorization: cm_auth
let cm_auth = defaultClient.authentications['cm_auth'];
cm_auth.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new OpenApi.CommentApi();
let commentId = "commentId_example"; // String | Comment id to delete
let opts = {
  'apiKey': "apiKey_example" // String | 
};
apiInstance.deleteComment(commentId, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **commentId** | **String**| Comment id to delete | 
 **apiKey** | **String**|  | [optional] 

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

```javascript
import OpenApi from 'open_api';
let defaultClient = OpenApi.ApiClient.instance;
// Configure API key authorization: api_key
let api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

let apiInstance = new OpenApi.CommentApi();
let commentId = "commentId_example"; // String | ID of comment to return
apiInstance.getCommentById(commentId, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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


## updateComment

> updateComment(comment)

Update an existing comment

### Example

```javascript
import OpenApi from 'open_api';
let defaultClient = OpenApi.ApiClient.instance;
// Configure OAuth2 access token for authorization: cm_auth
let cm_auth = defaultClient.authentications['cm_auth'];
cm_auth.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new OpenApi.CommentApi();
let comment = new OpenApi.Comment(); // Comment | Comment object that needs to be added
apiInstance.updateComment(comment, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
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

> updateCommentWithForm(commentId, opts)

Updates a comment with form data

### Example

```javascript
import OpenApi from 'open_api';
let defaultClient = OpenApi.ApiClient.instance;
// Configure OAuth2 access token for authorization: cm_auth
let cm_auth = defaultClient.authentications['cm_auth'];
cm_auth.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new OpenApi.CommentApi();
let commentId = "commentId_example"; // String | ID of comment that needs to be updated
let opts = {
  'userId': "userId_example", // String | 
  'postId': "postId_example", // String | 
  'blogId': "blogId_example", // String | 
  'parentId': "parentId_example", // String | 
  'authorDisplayName': "authorDisplayName_example", // String | 
  'createdTimestamp': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'modifiedTimestamp': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'content': "content_example", // String | 
  'status': "status_example", // String | 
  'downvoteCount': 56, // Number | 
  'upvoteCount': 56, // Number | 
  'media': new OpenApi.Media() // Media | 
};
apiInstance.updateCommentWithForm(commentId, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
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
 **createdTimestamp** | **Date**|  | [optional] 
 **modifiedTimestamp** | **Date**|  | [optional] 
 **content** | **String**|  | [optional] 
 **status** | **String**|  | [optional] 
 **downvoteCount** | **Number**|  | [optional] 
 **upvoteCount** | **Number**|  | [optional] 
 **media** | [**Media**](Media.md)|  | [optional] 

### Return type

null (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: Not defined

