# BlogApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addBlog**](BlogApi.md#addBlog) | **POST** /blog | Add a new blog
[**deleteBlog**](BlogApi.md#deleteBlog) | **DELETE** /blog/{blogId} | Deletes a blog
[**getBlogById**](BlogApi.md#getBlogById) | **GET** /blog/{blogId} | Find blog by ID
[**updateBlog**](BlogApi.md#updateBlog) | **PUT** /blog | Update an existing blog
[**updateBlogWithForm**](BlogApi.md#updateBlogWithForm) | **POST** /blog/{blogId} | Updates a blog with form data



## addBlog

> addBlog(blog)

Add a new blog

### Example

```java
// Import classes:
//import app.gcomment.api.BlogApi;

BlogApi apiInstance = new BlogApi();
Blog blog = new Blog(); // Blog | Blog object that needs to be added
try {
    apiInstance.addBlog(blog);
} catch (ApiException e) {
    System.err.println("Exception when calling BlogApi#addBlog");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blog** | [**Blog**](Blog.md)| Blog object that needs to be added | [optional]

### Return type

null (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: Not defined


## deleteBlog

> deleteBlog(blogId, apiKey)

Deletes a blog

### Example

```java
// Import classes:
//import app.gcomment.api.BlogApi;

BlogApi apiInstance = new BlogApi();
String blogId = null; // String | Blog id to delete
String apiKey = null; // String | 
try {
    apiInstance.deleteBlog(blogId, apiKey);
} catch (ApiException e) {
    System.err.println("Exception when calling BlogApi#deleteBlog");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blogId** | **String**| Blog id to delete | [default to null]
 **apiKey** | **String**|  | [optional] [default to null]

### Return type

null (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## getBlogById

> Blog getBlogById(blogId)

Find blog by ID

Returns a single blog

### Example

```java
// Import classes:
//import app.gcomment.api.BlogApi;

BlogApi apiInstance = new BlogApi();
String blogId = null; // String | ID of blog to return
try {
    Blog result = apiInstance.getBlogById(blogId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlogApi#getBlogById");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blogId** | **String**| ID of blog to return | [default to null]

### Return type

[**Blog**](Blog.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## updateBlog

> updateBlog(blog)

Update an existing blog

### Example

```java
// Import classes:
//import app.gcomment.api.BlogApi;

BlogApi apiInstance = new BlogApi();
Blog blog = new Blog(); // Blog | Blog object that needs to be added
try {
    apiInstance.updateBlog(blog);
} catch (ApiException e) {
    System.err.println("Exception when calling BlogApi#updateBlog");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blog** | [**Blog**](Blog.md)| Blog object that needs to be added | [optional]

### Return type

null (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: Not defined


## updateBlogWithForm

> updateBlogWithForm(blogId, name, url, authToken, commentStatus)

Updates a blog with form data

### Example

```java
// Import classes:
//import app.gcomment.api.BlogApi;

BlogApi apiInstance = new BlogApi();
String blogId = null; // String | ID of blog that needs to be updated
String name = null; // String | 
String url = null; // String | 
String authToken = null; // String | 
String commentStatus = null; // String | 
try {
    apiInstance.updateBlogWithForm(blogId, name, url, authToken, commentStatus);
} catch (ApiException e) {
    System.err.println("Exception when calling BlogApi#updateBlogWithForm");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blogId** | **String**| ID of blog that needs to be updated | [default to null]
 **name** | **String**|  | [optional] [default to null]
 **url** | **String**|  | [optional] [default to null]
 **authToken** | **String**|  | [optional] [default to null]
 **commentStatus** | **String**|  | [optional] [default to null] [enum: Disabled, RequireReview, AutomateReview]

### Return type

null (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: Not defined

