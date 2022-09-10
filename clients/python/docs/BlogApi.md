# openapi_client.BlogApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_blog**](BlogApi.md#add_blog) | **POST** /blog | Add a new blog
[**delete_blog**](BlogApi.md#delete_blog) | **DELETE** /blog/{blogId} | Deletes a blog
[**get_blog_by_id**](BlogApi.md#get_blog_by_id) | **GET** /blog/{blogId} | Find blog by ID
[**update_blog**](BlogApi.md#update_blog) | **PUT** /blog | Update an existing blog
[**update_blog_with_form**](BlogApi.md#update_blog_with_form) | **POST** /blog/{blogId} | Updates a blog with form data


# **add_blog**
> add_blog()

Add a new blog

### Example

* OAuth Authentication (cm_auth):

```python
import time
import openapi_client
from openapi_client.api import blog_api
from openapi_client.model.blog import Blog
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "http://localhost:8080"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure OAuth2 access token for authorization: cm_auth
configuration = openapi_client.Configuration(
    host = "http://localhost:8080"
)
configuration.access_token = 'YOUR_ACCESS_TOKEN'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = blog_api.BlogApi(api_client)
    blog = Blog(
        id="id_example",
        name="name_example",
        url="url_example",
        auth_token="auth_token_example",
        comment_status="Disabled",
    ) # Blog | Blog object that needs to be added (optional)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Add a new blog
        api_instance.add_blog(blog=blog)
    except openapi_client.ApiException as e:
        print("Exception when calling BlogApi->add_blog: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blog** | [**Blog**](Blog.md)| Blog object that needs to be added | [optional]

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
**200** | Blog created successfully |  -  |
**405** | Invalid input |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_blog**
> delete_blog(blog_id)

Deletes a blog

### Example

* OAuth Authentication (cm_auth):

```python
import time
import openapi_client
from openapi_client.api import blog_api
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "http://localhost:8080"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure OAuth2 access token for authorization: cm_auth
configuration = openapi_client.Configuration(
    host = "http://localhost:8080"
)
configuration.access_token = 'YOUR_ACCESS_TOKEN'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = blog_api.BlogApi(api_client)
    blog_id = "blogId_example" # str | Blog id to delete
    api_key = "api_key_example" # str |  (optional)

    # example passing only required values which don't have defaults set
    try:
        # Deletes a blog
        api_instance.delete_blog(blog_id)
    except openapi_client.ApiException as e:
        print("Exception when calling BlogApi->delete_blog: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Deletes a blog
        api_instance.delete_blog(blog_id, api_key=api_key)
    except openapi_client.ApiException as e:
        print("Exception when calling BlogApi->delete_blog: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blog_id** | **str**| Blog id to delete |
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
**200** | Blog deleted successfully |  -  |
**400** | Invalid ID supplied |  -  |
**404** | Blog not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_blog_by_id**
> Blog get_blog_by_id(blog_id)

Find blog by ID

Returns a single blog

### Example

* Api Key Authentication (api_key):

```python
import time
import openapi_client
from openapi_client.api import blog_api
from openapi_client.model.blog import Blog
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
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
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = blog_api.BlogApi(api_client)
    blog_id = "blogId_example" # str | ID of blog to return

    # example passing only required values which don't have defaults set
    try:
        # Find blog by ID
        api_response = api_instance.get_blog_by_id(blog_id)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling BlogApi->get_blog_by_id: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blog_id** | **str**| ID of blog to return |

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
**200** | blog fetched successfully |  -  |
**400** | Invalid ID supplied |  -  |
**404** | Blog not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_blog**
> update_blog()

Update an existing blog

### Example

* OAuth Authentication (cm_auth):

```python
import time
import openapi_client
from openapi_client.api import blog_api
from openapi_client.model.blog import Blog
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "http://localhost:8080"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure OAuth2 access token for authorization: cm_auth
configuration = openapi_client.Configuration(
    host = "http://localhost:8080"
)
configuration.access_token = 'YOUR_ACCESS_TOKEN'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = blog_api.BlogApi(api_client)
    blog = Blog(
        id="id_example",
        name="name_example",
        url="url_example",
        auth_token="auth_token_example",
        comment_status="Disabled",
    ) # Blog | Blog object that needs to be added (optional)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Update an existing blog
        api_instance.update_blog(blog=blog)
    except openapi_client.ApiException as e:
        print("Exception when calling BlogApi->update_blog: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blog** | [**Blog**](Blog.md)| Blog object that needs to be added | [optional]

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
**200** | Blog updated successfully |  -  |
**400** | Invalid ID supplied |  -  |
**404** | Blog not found |  -  |
**405** | Validation exception |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_blog_with_form**
> update_blog_with_form(blog_id)

Updates a blog with form data

### Example

* OAuth Authentication (cm_auth):

```python
import time
import openapi_client
from openapi_client.api import blog_api
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "http://localhost:8080"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure OAuth2 access token for authorization: cm_auth
configuration = openapi_client.Configuration(
    host = "http://localhost:8080"
)
configuration.access_token = 'YOUR_ACCESS_TOKEN'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = blog_api.BlogApi(api_client)
    blog_id = "blogId_example" # str | ID of blog that needs to be updated
    name = "name_example" # str |  (optional)
    url = "url_example" # str |  (optional)
    auth_token = "auth_token_example" # str |  (optional)
    comment_status = "Disabled" # str |  (optional)

    # example passing only required values which don't have defaults set
    try:
        # Updates a blog with form data
        api_instance.update_blog_with_form(blog_id)
    except openapi_client.ApiException as e:
        print("Exception when calling BlogApi->update_blog_with_form: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Updates a blog with form data
        api_instance.update_blog_with_form(blog_id, name=name, url=url, auth_token=auth_token, comment_status=comment_status)
    except openapi_client.ApiException as e:
        print("Exception when calling BlogApi->update_blog_with_form: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blog_id** | **str**| ID of blog that needs to be updated |
 **name** | **str**|  | [optional]
 **url** | **str**|  | [optional]
 **auth_token** | **str**|  | [optional]
 **comment_status** | **str**|  | [optional]

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
**200** | Blog updated successfully |  -  |
**405** | Invalid input |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

