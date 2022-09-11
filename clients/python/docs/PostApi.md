# gcomments.PostApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_post**](PostApi.md#add_post) | **POST** /post | Add a new post
[**delete_post**](PostApi.md#delete_post) | **DELETE** /post/{postId} | Deletes a post
[**get_post_by_id**](PostApi.md#get_post_by_id) | **GET** /post/{postId} | Find post by ID
[**update_post**](PostApi.md#update_post) | **PUT** /post | Update an existing post
[**update_post_with_form**](PostApi.md#update_post_with_form) | **POST** /post/{postId} | Updates a post with form data


# **add_post**
> add_post()

Add a new post

### Example

* OAuth Authentication (cm_auth):

```python
import time
import gcomments
from gcomments.api import post_api
from gcomments.model.post import Post
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = gcomments.Configuration(
    host = "http://localhost:8080"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure OAuth2 access token for authorization: cm_auth
configuration = gcomments.Configuration(
    host = "http://localhost:8080"
)
configuration.access_token = 'YOUR_ACCESS_TOKEN'

# Enter a context with an instance of the API client
with gcomments.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = post_api.PostApi(api_client)
    post = Post(
        id="id_example",
        title="title_example",
        url="url_example",
        excerpt="excerpt_example",
        content="content_example",
        comment_status="Disabled",
        post_type="post_type_example",
    ) # Post | Post object that needs to be added (optional)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Add a new post
        api_instance.add_post(post=post)
    except gcomments.ApiException as e:
        print("Exception when calling PostApi->add_post: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **post** | [**Post**](Post.md)| Post object that needs to be added | [optional]

### Return type

void (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: Not defined


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Post created successfully |  -  |
**405** | Invalid input |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_post**
> delete_post(post_id)

Deletes a post

### Example

* OAuth Authentication (cm_auth):

```python
import time
import gcomments
from gcomments.api import post_api
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = gcomments.Configuration(
    host = "http://localhost:8080"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure OAuth2 access token for authorization: cm_auth
configuration = gcomments.Configuration(
    host = "http://localhost:8080"
)
configuration.access_token = 'YOUR_ACCESS_TOKEN'

# Enter a context with an instance of the API client
with gcomments.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = post_api.PostApi(api_client)
    post_id = "postId_example" # str | Post id to delete
    api_key = "api_key_example" # str |  (optional)

    # example passing only required values which don't have defaults set
    try:
        # Deletes a post
        api_instance.delete_post(post_id)
    except gcomments.ApiException as e:
        print("Exception when calling PostApi->delete_post: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Deletes a post
        api_instance.delete_post(post_id, api_key=api_key)
    except gcomments.ApiException as e:
        print("Exception when calling PostApi->delete_post: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **post_id** | **str**| Post id to delete |
 **api_key** | **str**|  | [optional]

### Return type

void (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Post deleted successfully |  -  |
**400** | Invalid ID supplied |  -  |
**404** | Post not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_post_by_id**
> Post get_post_by_id(post_id)

Find post by ID

Returns a single post

### Example

* Api Key Authentication (api_key):

```python
import time
import gcomments
from gcomments.api import post_api
from gcomments.model.post import Post
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = gcomments.Configuration(
    host = "http://localhost:8080"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: api_key
configuration.api_key['api_key'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['api_key'] = 'Bearer'

# Enter a context with an instance of the API client
with gcomments.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = post_api.PostApi(api_client)
    post_id = "postId_example" # str | ID of post to return

    # example passing only required values which don't have defaults set
    try:
        # Find post by ID
        api_response = api_instance.get_post_by_id(post_id)
        pprint(api_response)
    except gcomments.ApiException as e:
        print("Exception when calling PostApi->get_post_by_id: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **post_id** | **str**| ID of post to return |

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
**200** | Post fetched successfully |  -  |
**400** | Invalid ID supplied |  -  |
**404** | Comment not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_post**
> update_post()

Update an existing post

### Example

* OAuth Authentication (cm_auth):

```python
import time
import gcomments
from gcomments.api import post_api
from gcomments.model.post import Post
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = gcomments.Configuration(
    host = "http://localhost:8080"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure OAuth2 access token for authorization: cm_auth
configuration = gcomments.Configuration(
    host = "http://localhost:8080"
)
configuration.access_token = 'YOUR_ACCESS_TOKEN'

# Enter a context with an instance of the API client
with gcomments.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = post_api.PostApi(api_client)
    post = Post(
        id="id_example",
        title="title_example",
        url="url_example",
        excerpt="excerpt_example",
        content="content_example",
        comment_status="Disabled",
        post_type="post_type_example",
    ) # Post | Post object that needs to be added (optional)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Update an existing post
        api_instance.update_post(post=post)
    except gcomments.ApiException as e:
        print("Exception when calling PostApi->update_post: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **post** | [**Post**](Post.md)| Post object that needs to be added | [optional]

### Return type

void (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: Not defined


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Post updated successfully |  -  |
**400** | Invalid ID supplied |  -  |
**404** | Comment not found |  -  |
**405** | Validation exception |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_post_with_form**
> update_post_with_form(post_id)

Updates a post with form data

### Example

* OAuth Authentication (cm_auth):

```python
import time
import gcomments
from gcomments.api import post_api
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = gcomments.Configuration(
    host = "http://localhost:8080"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure OAuth2 access token for authorization: cm_auth
configuration = gcomments.Configuration(
    host = "http://localhost:8080"
)
configuration.access_token = 'YOUR_ACCESS_TOKEN'

# Enter a context with an instance of the API client
with gcomments.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = post_api.PostApi(api_client)
    post_id = "postId_example" # str | ID of post that needs to be updated
    title = "title_example" # str |  (optional)
    url = "url_example" # str |  (optional)
    excerpt = "excerpt_example" # str |  (optional)
    content = "content_example" # str |  (optional)
    comment_status = "Disabled" # str |  (optional)
    post_type = "post_type_example" # str |  (optional)

    # example passing only required values which don't have defaults set
    try:
        # Updates a post with form data
        api_instance.update_post_with_form(post_id)
    except gcomments.ApiException as e:
        print("Exception when calling PostApi->update_post_with_form: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Updates a post with form data
        api_instance.update_post_with_form(post_id, title=title, url=url, excerpt=excerpt, content=content, comment_status=comment_status, post_type=post_type)
    except gcomments.ApiException as e:
        print("Exception when calling PostApi->update_post_with_form: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **post_id** | **str**| ID of post that needs to be updated |
 **title** | **str**|  | [optional]
 **url** | **str**|  | [optional]
 **excerpt** | **str**|  | [optional]
 **content** | **str**|  | [optional]
 **comment_status** | **str**|  | [optional]
 **post_type** | **str**|  | [optional]

### Return type

void (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: Not defined


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Post updated successfully |  -  |
**405** | Invalid input |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

