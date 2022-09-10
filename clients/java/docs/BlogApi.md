# BlogApi

All URIs are relative to *http://localhost:8080*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**addBlog**](BlogApi.md#addBlog) | **POST** /blog | Add a new blog |
| [**deleteBlog**](BlogApi.md#deleteBlog) | **DELETE** /blog/{blogId} | Deletes a blog |
| [**getBlogById**](BlogApi.md#getBlogById) | **GET** /blog/{blogId} | Find blog by ID |
| [**updateBlog**](BlogApi.md#updateBlog) | **PUT** /blog | Update an existing blog |
| [**updateBlogWithForm**](BlogApi.md#updateBlogWithForm) | **POST** /blog/{blogId} | Updates a blog with form data |


<a name="addBlog"></a>
# **addBlog**
> addBlog(blog)

Add a new blog

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.BlogApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost:8080");
    
    // Configure OAuth2 access token for authorization: cm_auth
    OAuth cm_auth = (OAuth) defaultClient.getAuthentication("cm_auth");
    cm_auth.setAccessToken("YOUR ACCESS TOKEN");

    BlogApi apiInstance = new BlogApi(defaultClient);
    Blog blog = new Blog(); // Blog | Blog object that needs to be added
    try {
      apiInstance.addBlog(blog);
    } catch (ApiException e) {
      System.err.println("Exception when calling BlogApi#addBlog");
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
| **blog** | [**Blog**](Blog.md)| Blog object that needs to be added | [optional] |

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
| **200** | Blog created successfully |  -  |
| **405** | Invalid input |  -  |

<a name="deleteBlog"></a>
# **deleteBlog**
> deleteBlog(blogId, apiKey)

Deletes a blog

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.BlogApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost:8080");
    
    // Configure OAuth2 access token for authorization: cm_auth
    OAuth cm_auth = (OAuth) defaultClient.getAuthentication("cm_auth");
    cm_auth.setAccessToken("YOUR ACCESS TOKEN");

    BlogApi apiInstance = new BlogApi(defaultClient);
    String blogId = "blogId_example"; // String | Blog id to delete
    String apiKey = "apiKey_example"; // String | 
    try {
      apiInstance.deleteBlog(blogId, apiKey);
    } catch (ApiException e) {
      System.err.println("Exception when calling BlogApi#deleteBlog");
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
| **blogId** | **String**| Blog id to delete | |
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
| **200** | Blog deleted successfully |  -  |
| **400** | Invalid ID supplied |  -  |
| **404** | Blog not found |  -  |

<a name="getBlogById"></a>
# **getBlogById**
> Blog getBlogById(blogId)

Find blog by ID

Returns a single blog

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.BlogApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost:8080");
    
    // Configure API key authorization: api_key
    ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
    api_key.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //api_key.setApiKeyPrefix("Token");

    BlogApi apiInstance = new BlogApi(defaultClient);
    String blogId = "blogId_example"; // String | ID of blog to return
    try {
      Blog result = apiInstance.getBlogById(blogId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BlogApi#getBlogById");
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
| **blogId** | **String**| ID of blog to return | |

### Return type

[**Blog**](Blog.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | blog fetched successfully |  -  |
| **400** | Invalid ID supplied |  -  |
| **404** | Blog not found |  -  |

<a name="updateBlog"></a>
# **updateBlog**
> updateBlog(blog)

Update an existing blog

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.BlogApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost:8080");
    
    // Configure OAuth2 access token for authorization: cm_auth
    OAuth cm_auth = (OAuth) defaultClient.getAuthentication("cm_auth");
    cm_auth.setAccessToken("YOUR ACCESS TOKEN");

    BlogApi apiInstance = new BlogApi(defaultClient);
    Blog blog = new Blog(); // Blog | Blog object that needs to be added
    try {
      apiInstance.updateBlog(blog);
    } catch (ApiException e) {
      System.err.println("Exception when calling BlogApi#updateBlog");
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
| **blog** | [**Blog**](Blog.md)| Blog object that needs to be added | [optional] |

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
| **200** | Blog updated successfully |  -  |
| **400** | Invalid ID supplied |  -  |
| **404** | Blog not found |  -  |
| **405** | Validation exception |  -  |

<a name="updateBlogWithForm"></a>
# **updateBlogWithForm**
> updateBlogWithForm(blogId, name, url, authToken, commentStatus)

Updates a blog with form data

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.BlogApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost:8080");
    
    // Configure OAuth2 access token for authorization: cm_auth
    OAuth cm_auth = (OAuth) defaultClient.getAuthentication("cm_auth");
    cm_auth.setAccessToken("YOUR ACCESS TOKEN");

    BlogApi apiInstance = new BlogApi(defaultClient);
    String blogId = "blogId_example"; // String | ID of blog that needs to be updated
    String name = "name_example"; // String | 
    String url = "url_example"; // String | 
    String authToken = "authToken_example"; // String | 
    String commentStatus = "Disabled"; // String | 
    try {
      apiInstance.updateBlogWithForm(blogId, name, url, authToken, commentStatus);
    } catch (ApiException e) {
      System.err.println("Exception when calling BlogApi#updateBlogWithForm");
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
| **blogId** | **String**| ID of blog that needs to be updated | |
| **name** | **String**|  | [optional] |
| **url** | **String**|  | [optional] |
| **authToken** | **String**|  | [optional] |
| **commentStatus** | **String**|  | [optional] [enum: Disabled, RequireReview, AutomateReview] |

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
| **200** | Blog updated successfully |  -  |
| **405** | Invalid input |  -  |

