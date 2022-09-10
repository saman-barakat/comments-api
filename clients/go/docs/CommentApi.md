# \CommentApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AddComment**](CommentApi.md#AddComment) | **Post** /comment | Add a new comment
[**DeleteComment**](CommentApi.md#DeleteComment) | **Delete** /comment/{commentId} | Deletes a comment
[**GetCommentById**](CommentApi.md#GetCommentById) | **Get** /comment/{commentId} | Find comment by ID
[**UpdateComment**](CommentApi.md#UpdateComment) | **Put** /comment | Update an existing comment
[**UpdateCommentWithForm**](CommentApi.md#UpdateCommentWithForm) | **Post** /comment/{commentId} | Updates a comment with form data



## AddComment

> AddComment(ctx).Comment(comment).Execute()

Add a new comment

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
    comment := *openapiclient.NewComment() // Comment | Comment object that needs to be added

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CommentApi.AddComment(context.Background()).Comment(comment).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CommentApi.AddComment``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiAddCommentRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **comment** | [**Comment**](Comment.md) | Comment object that needs to be added | 

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


## DeleteComment

> DeleteComment(ctx, commentId).ApiKey(apiKey).Execute()

Deletes a comment

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
    commentId := "commentId_example" // string | Comment id to delete
    apiKey := "apiKey_example" // string |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CommentApi.DeleteComment(context.Background(), commentId).ApiKey(apiKey).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CommentApi.DeleteComment``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**commentId** | **string** | Comment id to delete | 

### Other Parameters

Other parameters are passed through a pointer to a apiDeleteCommentRequest struct via the builder pattern


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


## GetCommentById

> Comment GetCommentById(ctx, commentId).Execute()

Find comment by ID



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
    commentId := "commentId_example" // string | ID of comment to return

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CommentApi.GetCommentById(context.Background(), commentId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CommentApi.GetCommentById``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `GetCommentById`: Comment
    fmt.Fprintf(os.Stdout, "Response from `CommentApi.GetCommentById`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**commentId** | **string** | ID of comment to return | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetCommentByIdRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**Comment**](Comment.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpdateComment

> UpdateComment(ctx).Comment(comment).Execute()

Update an existing comment

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
    comment := *openapiclient.NewComment() // Comment | Comment object that needs to be added

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CommentApi.UpdateComment(context.Background()).Comment(comment).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CommentApi.UpdateComment``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiUpdateCommentRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **comment** | [**Comment**](Comment.md) | Comment object that needs to be added | 

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


## UpdateCommentWithForm

> UpdateCommentWithForm(ctx, commentId).UserId(userId).PostId(postId).BlogId(blogId).ParentId(parentId).AuthorDisplayName(authorDisplayName).CreatedTimestamp(createdTimestamp).ModifiedTimestamp(modifiedTimestamp).Content(content).Status(status).DownvoteCount(downvoteCount).UpvoteCount(upvoteCount).Media(media).Execute()

Updates a comment with form data

### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    "time"
    openapiclient "./openapi"
)

func main() {
    commentId := "commentId_example" // string | ID of comment that needs to be updated
    userId := "userId_example" // string |  (optional)
    postId := "postId_example" // string |  (optional)
    blogId := "blogId_example" // string |  (optional)
    parentId := "parentId_example" // string |  (optional)
    authorDisplayName := "authorDisplayName_example" // string |  (optional)
    createdTimestamp := time.Now() // time.Time |  (optional)
    modifiedTimestamp := time.Now() // time.Time |  (optional)
    content := "content_example" // string |  (optional)
    status := "status_example" // string |  (optional)
    downvoteCount := int32(56) // int32 |  (optional)
    upvoteCount := int32(56) // int32 |  (optional)
    media := *openapiclient.NewMedia() // Media |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CommentApi.UpdateCommentWithForm(context.Background(), commentId).UserId(userId).PostId(postId).BlogId(blogId).ParentId(parentId).AuthorDisplayName(authorDisplayName).CreatedTimestamp(createdTimestamp).ModifiedTimestamp(modifiedTimestamp).Content(content).Status(status).DownvoteCount(downvoteCount).UpvoteCount(upvoteCount).Media(media).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CommentApi.UpdateCommentWithForm``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**commentId** | **string** | ID of comment that needs to be updated | 

### Other Parameters

Other parameters are passed through a pointer to a apiUpdateCommentWithFormRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **userId** | **string** |  | 
 **postId** | **string** |  | 
 **blogId** | **string** |  | 
 **parentId** | **string** |  | 
 **authorDisplayName** | **string** |  | 
 **createdTimestamp** | **time.Time** |  | 
 **modifiedTimestamp** | **time.Time** |  | 
 **content** | **string** |  | 
 **status** | **string** |  | 
 **downvoteCount** | **int32** |  | 
 **upvoteCount** | **int32** |  | 
 **media** | [**Media**](Media.md) |  | 

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

