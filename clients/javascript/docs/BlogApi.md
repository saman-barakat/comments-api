# GComments.BlogApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addBlog**](BlogApi.md#addBlog) | **POST** /blog | Add a new blog
[**deleteBlog**](BlogApi.md#deleteBlog) | **DELETE** /blog/{blogId} | Deletes a blog
[**getBlogById**](BlogApi.md#getBlogById) | **GET** /blog/{blogId} | Find blog by ID
[**updateBlog**](BlogApi.md#updateBlog) | **PUT** /blog | Update an existing blog
[**updateBlogWithForm**](BlogApi.md#updateBlogWithForm) | **POST** /blog/{blogId} | Updates a blog with form data



## addBlog

> addBlog(opts)

Add a new blog

### Example

```javascript
import GComments from 'g_comments';
let defaultClient = GComments.ApiClient.instance;
// Configure OAuth2 access token for authorization: cm_auth
let cm_auth = defaultClient.authentications['cm_auth'];
cm_auth.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new GComments.BlogApi();
let opts = {
  'blog': new GComments.Blog() // Blog | Blog object that needs to be added
};
apiInstance.addBlog(opts, (error, data, response) => {
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
 **blog** | [**Blog**](Blog.md)| Blog object that needs to be added | [optional] 

### Return type

null (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: Not defined


## deleteBlog

> deleteBlog(blogId, opts)

Deletes a blog

### Example

```javascript
import GComments from 'g_comments';
let defaultClient = GComments.ApiClient.instance;
// Configure OAuth2 access token for authorization: cm_auth
let cm_auth = defaultClient.authentications['cm_auth'];
cm_auth.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new GComments.BlogApi();
let blogId = "blogId_example"; // String | Blog id to delete
let opts = {
  'apiKey': "apiKey_example" // String | 
};
apiInstance.deleteBlog(blogId, opts, (error, data, response) => {
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
 **blogId** | **String**| Blog id to delete | 
 **apiKey** | **String**|  | [optional] 

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

```javascript
import GComments from 'g_comments';
let defaultClient = GComments.ApiClient.instance;
// Configure API key authorization: api_key
let api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

let apiInstance = new GComments.BlogApi();
let blogId = "blogId_example"; // String | ID of blog to return
apiInstance.getBlogById(blogId, (error, data, response) => {
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
 **blogId** | **String**| ID of blog to return | 

### Return type

[**Blog**](Blog.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## updateBlog

> updateBlog(opts)

Update an existing blog

### Example

```javascript
import GComments from 'g_comments';
let defaultClient = GComments.ApiClient.instance;
// Configure OAuth2 access token for authorization: cm_auth
let cm_auth = defaultClient.authentications['cm_auth'];
cm_auth.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new GComments.BlogApi();
let opts = {
  'blog': new GComments.Blog() // Blog | Blog object that needs to be added
};
apiInstance.updateBlog(opts, (error, data, response) => {
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
 **blog** | [**Blog**](Blog.md)| Blog object that needs to be added | [optional] 

### Return type

null (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: Not defined


## updateBlogWithForm

> updateBlogWithForm(blogId, opts)

Updates a blog with form data

### Example

```javascript
import GComments from 'g_comments';
let defaultClient = GComments.ApiClient.instance;
// Configure OAuth2 access token for authorization: cm_auth
let cm_auth = defaultClient.authentications['cm_auth'];
cm_auth.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new GComments.BlogApi();
let blogId = "blogId_example"; // String | ID of blog that needs to be updated
let opts = {
  'name': "name_example", // String | 
  'url': "url_example", // String | 
  'authToken': "authToken_example", // String | 
  'commentStatus': "commentStatus_example" // String | 
};
apiInstance.updateBlogWithForm(blogId, opts, (error, data, response) => {
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
 **blogId** | **String**| ID of blog that needs to be updated | 
 **name** | **String**|  | [optional] 
 **url** | **String**|  | [optional] 
 **authToken** | **String**|  | [optional] 
 **commentStatus** | **String**|  | [optional] 

### Return type

null (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: Not defined

