# GComments.PostApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addPost**](PostApi.md#addPost) | **POST** /post | Add a new post
[**deletePost**](PostApi.md#deletePost) | **DELETE** /post/{postId} | Deletes a post
[**getPostById**](PostApi.md#getPostById) | **GET** /post/{postId} | Find post by ID
[**updatePost**](PostApi.md#updatePost) | **PUT** /post | Update an existing post
[**updatePostWithForm**](PostApi.md#updatePostWithForm) | **POST** /post/{postId} | Updates a post with form data



## addPost

> addPost(opts)

Add a new post

### Example

```javascript
import GComments from 'g_comments';
let defaultClient = GComments.ApiClient.instance;
// Configure OAuth2 access token for authorization: cm_auth
let cm_auth = defaultClient.authentications['cm_auth'];
cm_auth.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new GComments.PostApi();
let opts = {
  'post': new GComments.Post() // Post | Post object that needs to be added
};
apiInstance.addPost(opts, (error, data, response) => {
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
 **post** | [**Post**](Post.md)| Post object that needs to be added | [optional] 

### Return type

null (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: Not defined


## deletePost

> deletePost(postId, opts)

Deletes a post

### Example

```javascript
import GComments from 'g_comments';
let defaultClient = GComments.ApiClient.instance;
// Configure OAuth2 access token for authorization: cm_auth
let cm_auth = defaultClient.authentications['cm_auth'];
cm_auth.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new GComments.PostApi();
let postId = "postId_example"; // String | Post id to delete
let opts = {
  'apiKey': "apiKey_example" // String | 
};
apiInstance.deletePost(postId, opts, (error, data, response) => {
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
 **postId** | **String**| Post id to delete | 
 **apiKey** | **String**|  | [optional] 

### Return type

null (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## getPostById

> Post getPostById(postId)

Find post by ID

Returns a single post

### Example

```javascript
import GComments from 'g_comments';
let defaultClient = GComments.ApiClient.instance;
// Configure API key authorization: api_key
let api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

let apiInstance = new GComments.PostApi();
let postId = "postId_example"; // String | ID of post to return
apiInstance.getPostById(postId, (error, data, response) => {
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
 **postId** | **String**| ID of post to return | 

### Return type

[**Post**](Post.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## updatePost

> updatePost(opts)

Update an existing post

### Example

```javascript
import GComments from 'g_comments';
let defaultClient = GComments.ApiClient.instance;
// Configure OAuth2 access token for authorization: cm_auth
let cm_auth = defaultClient.authentications['cm_auth'];
cm_auth.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new GComments.PostApi();
let opts = {
  'post': new GComments.Post() // Post | Post object that needs to be added
};
apiInstance.updatePost(opts, (error, data, response) => {
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
 **post** | [**Post**](Post.md)| Post object that needs to be added | [optional] 

### Return type

null (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: Not defined


## updatePostWithForm

> updatePostWithForm(postId, opts)

Updates a post with form data

### Example

```javascript
import GComments from 'g_comments';
let defaultClient = GComments.ApiClient.instance;
// Configure OAuth2 access token for authorization: cm_auth
let cm_auth = defaultClient.authentications['cm_auth'];
cm_auth.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new GComments.PostApi();
let postId = "postId_example"; // String | ID of post that needs to be updated
let opts = {
  'title': "title_example", // String | 
  'url': "url_example", // String | 
  'excerpt': "excerpt_example", // String | 
  'content': "content_example", // String | 
  'commentStatus': "commentStatus_example", // String | 
  'postType': "postType_example" // String | 
};
apiInstance.updatePostWithForm(postId, opts, (error, data, response) => {
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
 **postId** | **String**| ID of post that needs to be updated | 
 **title** | **String**|  | [optional] 
 **url** | **String**|  | [optional] 
 **excerpt** | **String**|  | [optional] 
 **content** | **String**|  | [optional] 
 **commentStatus** | **String**|  | [optional] 
 **postType** | **String**|  | [optional] 

### Return type

null (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: Not defined

