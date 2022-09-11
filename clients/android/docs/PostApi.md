# PostApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addPost**](PostApi.md#addPost) | **POST** /post | Add a new post
[**deletePost**](PostApi.md#deletePost) | **DELETE** /post/{postId} | Deletes a post
[**getPostById**](PostApi.md#getPostById) | **GET** /post/{postId} | Find post by ID
[**updatePost**](PostApi.md#updatePost) | **PUT** /post | Update an existing post
[**updatePostWithForm**](PostApi.md#updatePostWithForm) | **POST** /post/{postId} | Updates a post with form data



## addPost

> addPost(post)

Add a new post

### Example

```java
// Import classes:
//import app.gcomment.api.PostApi;

PostApi apiInstance = new PostApi();
Post post = new Post(); // Post | Post object that needs to be added
try {
    apiInstance.addPost(post);
} catch (ApiException e) {
    System.err.println("Exception when calling PostApi#addPost");
    e.printStackTrace();
}
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

> deletePost(postId, apiKey)

Deletes a post

### Example

```java
// Import classes:
//import app.gcomment.api.PostApi;

PostApi apiInstance = new PostApi();
String postId = null; // String | Post id to delete
String apiKey = null; // String | 
try {
    apiInstance.deletePost(postId, apiKey);
} catch (ApiException e) {
    System.err.println("Exception when calling PostApi#deletePost");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postId** | **String**| Post id to delete | [default to null]
 **apiKey** | **String**|  | [optional] [default to null]

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

```java
// Import classes:
//import app.gcomment.api.PostApi;

PostApi apiInstance = new PostApi();
String postId = null; // String | ID of post to return
try {
    Post result = apiInstance.getPostById(postId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PostApi#getPostById");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postId** | **String**| ID of post to return | [default to null]

### Return type

[**Post**](Post.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## updatePost

> updatePost(post)

Update an existing post

### Example

```java
// Import classes:
//import app.gcomment.api.PostApi;

PostApi apiInstance = new PostApi();
Post post = new Post(); // Post | Post object that needs to be added
try {
    apiInstance.updatePost(post);
} catch (ApiException e) {
    System.err.println("Exception when calling PostApi#updatePost");
    e.printStackTrace();
}
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

> updatePostWithForm(postId, title, url, excerpt, content, commentStatus, postType)

Updates a post with form data

### Example

```java
// Import classes:
//import app.gcomment.api.PostApi;

PostApi apiInstance = new PostApi();
String postId = null; // String | ID of post that needs to be updated
String title = null; // String | 
String url = null; // String | 
String excerpt = null; // String | 
String content = null; // String | 
String commentStatus = null; // String | 
String postType = null; // String | 
try {
    apiInstance.updatePostWithForm(postId, title, url, excerpt, content, commentStatus, postType);
} catch (ApiException e) {
    System.err.println("Exception when calling PostApi#updatePostWithForm");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postId** | **String**| ID of post that needs to be updated | [default to null]
 **title** | **String**|  | [optional] [default to null]
 **url** | **String**|  | [optional] [default to null]
 **excerpt** | **String**|  | [optional] [default to null]
 **content** | **String**|  | [optional] [default to null]
 **commentStatus** | **String**|  | [optional] [default to null] [enum: Disabled, RequireReview, AutomateReview]
 **postType** | **String**|  | [optional] [default to null]

### Return type

null (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: Not defined

