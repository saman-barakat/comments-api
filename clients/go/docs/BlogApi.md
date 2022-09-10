# \BlogApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AddBlog**](BlogApi.md#AddBlog) | **Post** /blog | Add a new blog
[**DeleteBlog**](BlogApi.md#DeleteBlog) | **Delete** /blog/{blogId} | Deletes a blog
[**GetBlogById**](BlogApi.md#GetBlogById) | **Get** /blog/{blogId} | Find blog by ID
[**UpdateBlog**](BlogApi.md#UpdateBlog) | **Put** /blog | Update an existing blog
[**UpdateBlogWithForm**](BlogApi.md#UpdateBlogWithForm) | **Post** /blog/{blogId} | Updates a blog with form data



## AddBlog

> AddBlog(ctx).Blog(blog).Execute()

Add a new blog

### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    blog := *openapiclient.NewBlog() // Blog | Blog object that needs to be added (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.BlogApi.AddBlog(context.Background()).Blog(blog).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `BlogApi.AddBlog``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiAddBlogRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blog** | [**Blog**](Blog.md) | Blog object that needs to be added | 

### Return type

 (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DeleteBlog

> DeleteBlog(ctx, blogId).ApiKey(apiKey).Execute()

Deletes a blog

### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    blogId := "blogId_example" // string | Blog id to delete
    apiKey := "apiKey_example" // string |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.BlogApi.DeleteBlog(context.Background(), blogId).ApiKey(apiKey).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `BlogApi.DeleteBlog``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**blogId** | **string** | Blog id to delete | 

### Other Parameters

Other parameters are passed through a pointer to a apiDeleteBlogRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **apiKey** | **string** |  | 

### Return type

 (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetBlogById

> Blog GetBlogById(ctx, blogId).Execute()

Find blog by ID



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    blogId := "blogId_example" // string | ID of blog to return

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.BlogApi.GetBlogById(context.Background(), blogId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `BlogApi.GetBlogById``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `GetBlogById`: Blog
    fmt.Fprintf(os.Stdout, "Response from `BlogApi.GetBlogById`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**blogId** | **string** | ID of blog to return | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetBlogByIdRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**Blog**](Blog.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpdateBlog

> UpdateBlog(ctx).Blog(blog).Execute()

Update an existing blog

### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    blog := *openapiclient.NewBlog() // Blog | Blog object that needs to be added (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.BlogApi.UpdateBlog(context.Background()).Blog(blog).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `BlogApi.UpdateBlog``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiUpdateBlogRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blog** | [**Blog**](Blog.md) | Blog object that needs to be added | 

### Return type

 (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpdateBlogWithForm

> UpdateBlogWithForm(ctx, blogId).Name(name).Url(url).AuthToken(authToken).CommentStatus(commentStatus).Execute()

Updates a blog with form data

### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    blogId := "blogId_example" // string | ID of blog that needs to be updated
    name := "name_example" // string |  (optional)
    url := "url_example" // string |  (optional)
    authToken := "authToken_example" // string |  (optional)
    commentStatus := "commentStatus_example" // string |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.BlogApi.UpdateBlogWithForm(context.Background(), blogId).Name(name).Url(url).AuthToken(authToken).CommentStatus(commentStatus).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `BlogApi.UpdateBlogWithForm``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**blogId** | **string** | ID of blog that needs to be updated | 

### Other Parameters

Other parameters are passed through a pointer to a apiUpdateBlogWithFormRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **name** | **string** |  | 
 **url** | **string** |  | 
 **authToken** | **string** |  | 
 **commentStatus** | **string** |  | 

### Return type

 (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

