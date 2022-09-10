# CommentApi

All URIs are relative to *http://localhost:8080*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**addComment**](CommentApi.md#addComment) | **POST** /comment | Add a new comment |
| [**deleteComment**](CommentApi.md#deleteComment) | **DELETE** /comment/{commentId} | Deletes a comment |
| [**getCommentById**](CommentApi.md#getCommentById) | **GET** /comment/{commentId} | Find comment by ID |
| [**updateComment**](CommentApi.md#updateComment) | **PUT** /comment | Update an existing comment |
| [**updateCommentWithForm**](CommentApi.md#updateCommentWithForm) | **POST** /comment/{commentId} | Updates a comment with form data |


<a name="addComment"></a>
# **addComment**
> addComment(comment)

Add a new comment

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CommentApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost:8080");
    
    // Configure OAuth2 access token for authorization: cm_auth
    OAuth cm_auth = (OAuth) defaultClient.getAuthentication("cm_auth");
    cm_auth.setAccessToken("YOUR ACCESS TOKEN");

    CommentApi apiInstance = new CommentApi(defaultClient);
    Comment comment = new Comment(); // Comment | Comment object that needs to be added
    try {
      apiInstance.addComment(comment);
    } catch (ApiException e) {
      System.err.println("Exception when calling CommentApi#addComment");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **comment** | [**Comment**](Comment.md)| Comment object that needs to be added | |

### Return type

null (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Comment created successfully |  -  |
| **405** | Invalid input |  -  |

<a name="deleteComment"></a>
# **deleteComment**
> deleteComment(commentId, apiKey)

Deletes a comment

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CommentApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost:8080");
    
    // Configure OAuth2 access token for authorization: cm_auth
    OAuth cm_auth = (OAuth) defaultClient.getAuthentication("cm_auth");
    cm_auth.setAccessToken("YOUR ACCESS TOKEN");

    CommentApi apiInstance = new CommentApi(defaultClient);
    String commentId = "commentId_example"; // String | Comment id to delete
    String apiKey = "apiKey_example"; // String | 
    try {
      apiInstance.deleteComment(commentId, apiKey);
    } catch (ApiException e) {
      System.err.println("Exception when calling CommentApi#deleteComment");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **commentId** | **String**| Comment id to delete | |
| **apiKey** | **String**|  | [optional] |

### Return type

null (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Comment deleted successfully |  -  |
| **400** | Invalid ID supplied |  -  |
| **404** | Comment not found |  -  |

<a name="getCommentById"></a>
# **getCommentById**
> Comment getCommentById(commentId)

Find comment by ID

Returns a single comment

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CommentApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost:8080");
    
    // Configure API key authorization: api_key
    ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
    api_key.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //api_key.setApiKeyPrefix("Token");

    CommentApi apiInstance = new CommentApi(defaultClient);
    String commentId = "commentId_example"; // String | ID of comment to return
    try {
      Comment result = apiInstance.getCommentById(commentId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CommentApi#getCommentById");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **commentId** | **String**| ID of comment to return | |

### Return type

[**Comment**](Comment.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Comment fetched successfully |  -  |
| **400** | Invalid ID supplied |  -  |
| **404** | Comment not found |  -  |

<a name="updateComment"></a>
# **updateComment**
> updateComment(comment)

Update an existing comment

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CommentApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost:8080");
    
    // Configure OAuth2 access token for authorization: cm_auth
    OAuth cm_auth = (OAuth) defaultClient.getAuthentication("cm_auth");
    cm_auth.setAccessToken("YOUR ACCESS TOKEN");

    CommentApi apiInstance = new CommentApi(defaultClient);
    Comment comment = new Comment(); // Comment | Comment object that needs to be added
    try {
      apiInstance.updateComment(comment);
    } catch (ApiException e) {
      System.err.println("Exception when calling CommentApi#updateComment");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **comment** | [**Comment**](Comment.md)| Comment object that needs to be added | |

### Return type

null (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Comment updated successfully |  -  |
| **400** | Invalid ID supplied |  -  |
| **404** | Comment not found |  -  |
| **405** | Validation exception |  -  |

<a name="updateCommentWithForm"></a>
# **updateCommentWithForm**
> updateCommentWithForm(commentId, userId, postId, blogId, parentId, authorDisplayName, createdTimestamp, modifiedTimestamp, content, status, downvoteCount, upvoteCount, media)

Updates a comment with form data

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CommentApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost:8080");
    
    // Configure OAuth2 access token for authorization: cm_auth
    OAuth cm_auth = (OAuth) defaultClient.getAuthentication("cm_auth");
    cm_auth.setAccessToken("YOUR ACCESS TOKEN");

    CommentApi apiInstance = new CommentApi(defaultClient);
    String commentId = "commentId_example"; // String | ID of comment that needs to be updated
    String userId = "userId_example"; // String | 
    String postId = "postId_example"; // String | 
    String blogId = "blogId_example"; // String | 
    String parentId = "parentId_example"; // String | 
    String authorDisplayName = "authorDisplayName_example"; // String | 
    OffsetDateTime createdTimestamp = OffsetDateTime.now(); // OffsetDateTime | 
    OffsetDateTime modifiedTimestamp = OffsetDateTime.now(); // OffsetDateTime | 
    String content = "content_example"; // String | 
    String status = "Draft"; // String | 
    Integer downvoteCount = 56; // Integer | 
    Integer upvoteCount = 56; // Integer | 
    Media media = new Media(); // Media | 
    try {
      apiInstance.updateCommentWithForm(commentId, userId, postId, blogId, parentId, authorDisplayName, createdTimestamp, modifiedTimestamp, content, status, downvoteCount, upvoteCount, media);
    } catch (ApiException e) {
      System.err.println("Exception when calling CommentApi#updateCommentWithForm");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **commentId** | **String**| ID of comment that needs to be updated | |
| **userId** | **String**|  | [optional] |
| **postId** | **String**|  | [optional] |
| **blogId** | **String**|  | [optional] |
| **parentId** | **String**|  | [optional] |
| **authorDisplayName** | **String**|  | [optional] |
| **createdTimestamp** | **OffsetDateTime**|  | [optional] |
| **modifiedTimestamp** | **OffsetDateTime**|  | [optional] |
| **content** | **String**|  | [optional] |
| **status** | **String**|  | [optional] [enum: Draft, InReview, Flagged, Published] |
| **downvoteCount** | **Integer**|  | [optional] |
| **upvoteCount** | **Integer**|  | [optional] |
| **media** | [**Media**](Media.md)|  | [optional] |

### Return type

null (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Comment created successfully |  -  |
| **405** | Invalid input |  -  |

