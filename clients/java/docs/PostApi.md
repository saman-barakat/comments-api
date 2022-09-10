# PostApi

All URIs are relative to *http://localhost:8080*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**addPost**](PostApi.md#addPost) | **POST** /post | Add a new post |
| [**deletePost**](PostApi.md#deletePost) | **DELETE** /post/{postId} | Deletes a post |
| [**getPostById**](PostApi.md#getPostById) | **GET** /post/{postId} | Find post by ID |
| [**updatePost**](PostApi.md#updatePost) | **PUT** /post | Update an existing post |
| [**updatePostWithForm**](PostApi.md#updatePostWithForm) | **POST** /post/{postId} | Updates a post with form data |


<a name="addPost"></a>
# **addPost**
> addPost(post)

Add a new post

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.PostApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost:8080");
    
    // Configure OAuth2 access token for authorization: cm_auth
    OAuth cm_auth = (OAuth) defaultClient.getAuthentication("cm_auth");
    cm_auth.setAccessToken("YOUR ACCESS TOKEN");

    PostApi apiInstance = new PostApi(defaultClient);
    Post post = new Post(); // Post | Post object that needs to be added
    try {
      apiInstance.addPost(post);
    } catch (ApiException e) {
      System.err.println("Exception when calling PostApi#addPost");
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
| **post** | [**Post**](Post.md)| Post object that needs to be added | [optional] |

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
| **200** | Post created successfully |  -  |
| **405** | Invalid input |  -  |

<a name="deletePost"></a>
# **deletePost**
> deletePost(postId, apiKey)

Deletes a post

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.PostApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost:8080");
    
    // Configure OAuth2 access token for authorization: cm_auth
    OAuth cm_auth = (OAuth) defaultClient.getAuthentication("cm_auth");
    cm_auth.setAccessToken("YOUR ACCESS TOKEN");

    PostApi apiInstance = new PostApi(defaultClient);
    String postId = "postId_example"; // String | Post id to delete
    String apiKey = "apiKey_example"; // String | 
    try {
      apiInstance.deletePost(postId, apiKey);
    } catch (ApiException e) {
      System.err.println("Exception when calling PostApi#deletePost");
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
| **postId** | **String**| Post id to delete | |
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
| **200** | Post deleted successfully |  -  |
| **400** | Invalid ID supplied |  -  |
| **404** | Post not found |  -  |

<a name="getPostById"></a>
# **getPostById**
> Post getPostById(postId)

Find post by ID

Returns a single post

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.PostApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost:8080");
    
    // Configure API key authorization: api_key
    ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
    api_key.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //api_key.setApiKeyPrefix("Token");

    PostApi apiInstance = new PostApi(defaultClient);
    String postId = "postId_example"; // String | ID of post to return
    try {
      Post result = apiInstance.getPostById(postId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PostApi#getPostById");
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
| **postId** | **String**| ID of post to return | |

### Return type

[**Post**](Post.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Post fetched successfully |  -  |
| **400** | Invalid ID supplied |  -  |
| **404** | Comment not found |  -  |

<a name="updatePost"></a>
# **updatePost**
> updatePost(post)

Update an existing post

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.PostApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost:8080");
    
    // Configure OAuth2 access token for authorization: cm_auth
    OAuth cm_auth = (OAuth) defaultClient.getAuthentication("cm_auth");
    cm_auth.setAccessToken("YOUR ACCESS TOKEN");

    PostApi apiInstance = new PostApi(defaultClient);
    Post post = new Post(); // Post | Post object that needs to be added
    try {
      apiInstance.updatePost(post);
    } catch (ApiException e) {
      System.err.println("Exception when calling PostApi#updatePost");
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
| **post** | [**Post**](Post.md)| Post object that needs to be added | [optional] |

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
| **200** | Post updated successfully |  -  |
| **400** | Invalid ID supplied |  -  |
| **404** | Comment not found |  -  |
| **405** | Validation exception |  -  |

<a name="updatePostWithForm"></a>
# **updatePostWithForm**
> updatePostWithForm(postId, title, url, excerpt, content, commentStatus, postType)

Updates a post with form data

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.PostApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost:8080");
    
    // Configure OAuth2 access token for authorization: cm_auth
    OAuth cm_auth = (OAuth) defaultClient.getAuthentication("cm_auth");
    cm_auth.setAccessToken("YOUR ACCESS TOKEN");

    PostApi apiInstance = new PostApi(defaultClient);
    String postId = "postId_example"; // String | ID of post that needs to be updated
    String title = "title_example"; // String | 
    String url = "url_example"; // String | 
    String excerpt = "excerpt_example"; // String | 
    String content = "content_example"; // String | 
    String commentStatus = "Disabled"; // String | 
    String postType = "postType_example"; // String | 
    try {
      apiInstance.updatePostWithForm(postId, title, url, excerpt, content, commentStatus, postType);
    } catch (ApiException e) {
      System.err.println("Exception when calling PostApi#updatePostWithForm");
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
| **postId** | **String**| ID of post that needs to be updated | |
| **title** | **String**|  | [optional] |
| **url** | **String**|  | [optional] |
| **excerpt** | **String**|  | [optional] |
| **content** | **String**|  | [optional] |
| **commentStatus** | **String**|  | [optional] [enum: Disabled, RequireReview, AutomateReview] |
| **postType** | **String**|  | [optional] |

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
| **200** | Post updated successfully |  -  |
| **405** | Invalid input |  -  |

