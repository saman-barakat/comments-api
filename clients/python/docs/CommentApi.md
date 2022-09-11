# gcomments.CommentApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_comment**](CommentApi.md#add_comment) | **POST** /comment | Add a new comment
[**delete_comment**](CommentApi.md#delete_comment) | **DELETE** /comment/{commentId} | Deletes a comment
[**get_comment_by_id**](CommentApi.md#get_comment_by_id) | **GET** /comment/{commentId} | Find comment by ID
[**update_comment**](CommentApi.md#update_comment) | **PUT** /comment | Update an existing comment
[**update_comment_with_form**](CommentApi.md#update_comment_with_form) | **POST** /comment/{commentId} | Updates a comment with form data


# **add_comment**
> add_comment(comment)

Add a new comment

### Example

* OAuth Authentication (cm_auth):

```python
import time
import gcomments
from gcomments.api import comment_api
from gcomments.model.comment import Comment
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
    api_instance = comment_api.CommentApi(api_client)
    comment = Comment(
        id="id_example",
        user_id="user_id_example",
        post_id="post_id_example",
        blog_id="blog_id_example",
        parent_id="parent_id_example",
        author_display_name="author_display_name_example",
        created_timestamp=dateutil_parser('1970-01-01T00:00:00.00Z'),
        modified_timestamp=dateutil_parser('1970-01-01T00:00:00.00Z'),
        content="content_example",
        status="Draft",
        downvote_count=1,
        upvote_count=1,
        media=Media(
            id="id_example",
            type="type_example",
            name="name_example",
            content="content_example",
        ),
    ) # Comment | Comment object that needs to be added

    # example passing only required values which don't have defaults set
    try:
        # Add a new comment
        api_instance.add_comment(comment)
    except gcomments.ApiException as e:
        print("Exception when calling CommentApi->add_comment: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **comment** | [**Comment**](Comment.md)| Comment object that needs to be added |

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
**200** | Comment created successfully |  -  |
**405** | Invalid input |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_comment**
> delete_comment(comment_id)

Deletes a comment

### Example

* OAuth Authentication (cm_auth):

```python
import time
import gcomments
from gcomments.api import comment_api
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
    api_instance = comment_api.CommentApi(api_client)
    comment_id = "commentId_example" # str | Comment id to delete
    api_key = "api_key_example" # str |  (optional)

    # example passing only required values which don't have defaults set
    try:
        # Deletes a comment
        api_instance.delete_comment(comment_id)
    except gcomments.ApiException as e:
        print("Exception when calling CommentApi->delete_comment: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Deletes a comment
        api_instance.delete_comment(comment_id, api_key=api_key)
    except gcomments.ApiException as e:
        print("Exception when calling CommentApi->delete_comment: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **comment_id** | **str**| Comment id to delete |
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
**200** | Comment deleted successfully |  -  |
**400** | Invalid ID supplied |  -  |
**404** | Comment not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_comment_by_id**
> Comment get_comment_by_id(comment_id)

Find comment by ID

Returns a single comment

### Example

* Api Key Authentication (api_key):

```python
import time
import gcomments
from gcomments.api import comment_api
from gcomments.model.comment import Comment
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
    api_instance = comment_api.CommentApi(api_client)
    comment_id = "commentId_example" # str | ID of comment to return

    # example passing only required values which don't have defaults set
    try:
        # Find comment by ID
        api_response = api_instance.get_comment_by_id(comment_id)
        pprint(api_response)
    except gcomments.ApiException as e:
        print("Exception when calling CommentApi->get_comment_by_id: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **comment_id** | **str**| ID of comment to return |

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
**200** | Comment fetched successfully |  -  |
**400** | Invalid ID supplied |  -  |
**404** | Comment not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_comment**
> update_comment(comment)

Update an existing comment

### Example

* OAuth Authentication (cm_auth):

```python
import time
import gcomments
from gcomments.api import comment_api
from gcomments.model.comment import Comment
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
    api_instance = comment_api.CommentApi(api_client)
    comment = Comment(
        id="id_example",
        user_id="user_id_example",
        post_id="post_id_example",
        blog_id="blog_id_example",
        parent_id="parent_id_example",
        author_display_name="author_display_name_example",
        created_timestamp=dateutil_parser('1970-01-01T00:00:00.00Z'),
        modified_timestamp=dateutil_parser('1970-01-01T00:00:00.00Z'),
        content="content_example",
        status="Draft",
        downvote_count=1,
        upvote_count=1,
        media=Media(
            id="id_example",
            type="type_example",
            name="name_example",
            content="content_example",
        ),
    ) # Comment | Comment object that needs to be added

    # example passing only required values which don't have defaults set
    try:
        # Update an existing comment
        api_instance.update_comment(comment)
    except gcomments.ApiException as e:
        print("Exception when calling CommentApi->update_comment: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **comment** | [**Comment**](Comment.md)| Comment object that needs to be added |

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
**200** | Comment updated successfully |  -  |
**400** | Invalid ID supplied |  -  |
**404** | Comment not found |  -  |
**405** | Validation exception |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_comment_with_form**
> update_comment_with_form(comment_id)

Updates a comment with form data

### Example

* OAuth Authentication (cm_auth):

```python
import time
import gcomments
from gcomments.api import comment_api
from gcomments.model.media import Media
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
    api_instance = comment_api.CommentApi(api_client)
    comment_id = "commentId_example" # str | ID of comment that needs to be updated
    user_id = "user_id_example" # str |  (optional)
    post_id = "post_id_example" # str |  (optional)
    blog_id = "blog_id_example" # str |  (optional)
    parent_id = "parent_id_example" # str |  (optional)
    author_display_name = "author_display_name_example" # str |  (optional)
    created_timestamp = dateutil_parser('1970-01-01T00:00:00.00Z') # datetime |  (optional)
    modified_timestamp = dateutil_parser('1970-01-01T00:00:00.00Z') # datetime |  (optional)
    content = "content_example" # str |  (optional)
    status = "Draft" # str |  (optional)
    downvote_count = 1 # int |  (optional)
    upvote_count = 1 # int |  (optional)
    media = Media(
        id="id_example",
        type="type_example",
        name="name_example",
        content="content_example",
    ) # Media |  (optional)

    # example passing only required values which don't have defaults set
    try:
        # Updates a comment with form data
        api_instance.update_comment_with_form(comment_id)
    except gcomments.ApiException as e:
        print("Exception when calling CommentApi->update_comment_with_form: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Updates a comment with form data
        api_instance.update_comment_with_form(comment_id, user_id=user_id, post_id=post_id, blog_id=blog_id, parent_id=parent_id, author_display_name=author_display_name, created_timestamp=created_timestamp, modified_timestamp=modified_timestamp, content=content, status=status, downvote_count=downvote_count, upvote_count=upvote_count, media=media)
    except gcomments.ApiException as e:
        print("Exception when calling CommentApi->update_comment_with_form: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **comment_id** | **str**| ID of comment that needs to be updated |
 **user_id** | **str**|  | [optional]
 **post_id** | **str**|  | [optional]
 **blog_id** | **str**|  | [optional]
 **parent_id** | **str**|  | [optional]
 **author_display_name** | **str**|  | [optional]
 **created_timestamp** | **datetime**|  | [optional]
 **modified_timestamp** | **datetime**|  | [optional]
 **content** | **str**|  | [optional]
 **status** | **str**|  | [optional]
 **downvote_count** | **int**|  | [optional]
 **upvote_count** | **int**|  | [optional]
 **media** | [**Media**](Media.md)|  | [optional]

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
**200** | Comment created successfully |  -  |
**405** | Invalid input |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

