# \PostApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AddPost**](PostApi.md#AddPost) | **Post** /post | Add a new post
[**DeletePost**](PostApi.md#DeletePost) | **Delete** /post/{postId} | Deletes a post
[**GetPostById**](PostApi.md#GetPostById) | **Get** /post/{postId} | Find post by ID
[**UpdatePost**](PostApi.md#UpdatePost) | **Put** /post | Update an existing post
[**UpdatePostWithForm**](PostApi.md#UpdatePostWithForm) | **Post** /post/{postId} | Updates a post with form data



## AddPost

> AddPost(ctx).Post(post).Execute()

Add a new post

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
    post := *openapiclient.NewPost() // Post | Post object that needs to be added (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.PostApi.AddPost(context.Background()).Post(post).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `PostApi.AddPost``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiAddPostRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **post** | [**Post**](Post.md) | Post object that needs to be added | 

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


## DeletePost

> DeletePost(ctx, postId).ApiKey(apiKey).Execute()

Deletes a post

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
    postId := "postId_example" // string | Post id to delete
    apiKey := "apiKey_example" // string |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.PostApi.DeletePost(context.Background(), postId).ApiKey(apiKey).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `PostApi.DeletePost``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**postId** | **string** | Post id to delete | 

### Other Parameters

Other parameters are passed through a pointer to a apiDeletePostRequest struct via the builder pattern


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


## GetPostById

> Post GetPostById(ctx, postId).Execute()

Find post by ID



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
    postId := "postId_example" // string | ID of post to return

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.PostApi.GetPostById(context.Background(), postId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `PostApi.GetPostById``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `GetPostById`: Post
    fmt.Fprintf(os.Stdout, "Response from `PostApi.GetPostById`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**postId** | **string** | ID of post to return | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetPostByIdRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**Post**](Post.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpdatePost

> UpdatePost(ctx).Post(post).Execute()

Update an existing post

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
    post := *openapiclient.NewPost() // Post | Post object that needs to be added (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.PostApi.UpdatePost(context.Background()).Post(post).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `PostApi.UpdatePost``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiUpdatePostRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **post** | [**Post**](Post.md) | Post object that needs to be added | 

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


## UpdatePostWithForm

> UpdatePostWithForm(ctx, postId).Title(title).Url(url).Excerpt(excerpt).Content(content).CommentStatus(commentStatus).PostType(postType).Execute()

Updates a post with form data

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
    postId := "postId_example" // string | ID of post that needs to be updated
    title := "title_example" // string |  (optional)
    url := "url_example" // string |  (optional)
    excerpt := "excerpt_example" // string |  (optional)
    content := "content_example" // string |  (optional)
    commentStatus := "commentStatus_example" // string |  (optional)
    postType := "postType_example" // string |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.PostApi.UpdatePostWithForm(context.Background(), postId).Title(title).Url(url).Excerpt(excerpt).Content(content).CommentStatus(commentStatus).PostType(postType).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `PostApi.UpdatePostWithForm``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**postId** | **string** | ID of post that needs to be updated | 

### Other Parameters

Other parameters are passed through a pointer to a apiUpdatePostWithFormRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **title** | **string** |  | 
 **url** | **string** |  | 
 **excerpt** | **string** |  | 
 **content** | **string** |  | 
 **commentStatus** | **string** |  | 
 **postType** | **string** |  | 

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

