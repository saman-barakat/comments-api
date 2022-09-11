# gcomments.UserApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_user**](UserApi.md#create_user) | **POST** /user | Create user
[**delete_user**](UserApi.md#delete_user) | **DELETE** /user/{username} | Delete user
[**get_user_by_name**](UserApi.md#get_user_by_name) | **GET** /user/{username} | Get user by user name
[**login_user**](UserApi.md#login_user) | **GET** /user/login | Logs user into the system
[**logout_user**](UserApi.md#logout_user) | **GET** /user/logout | Logs out current logged in user session
[**update_user**](UserApi.md#update_user) | **PUT** /user/{username} | Updated user


# **create_user**
> create_user(user)

Create user

This can only be done by the logged in user.

### Example


```python
import time
import gcomments
from gcomments.api import user_api
from gcomments.model.user import User
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = gcomments.Configuration(
    host = "http://localhost:8080"
)


# Enter a context with an instance of the API client
with gcomments.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = user_api.UserApi(api_client)
    user = User(
        id="id_example",
        username="username_example",
        password="password_example",
        nice_name="nice_name_example",
        avatar_url="avatar_url_example",
        display_name="display_name_example",
        email="email_example",
        role=Role(
            name="name_example",
            capabilities=[
                "capabilities_example",
            ],
        ),
        blogs=[
            Blog(
                id="id_example",
                name="name_example",
                url="url_example",
                auth_token="auth_token_example",
                comment_status="Disabled",
            ),
        ],
        verification_status=VerificationStatus(
            is_verified=True,
            verification_timestamp=dateutil_parser('1970-01-01T00:00:00.00Z'),
            verification_method="verification_method_example",
        ),
    ) # User | Created user object

    # example passing only required values which don't have defaults set
    try:
        # Create user
        api_instance.create_user(user)
    except gcomments.ApiException as e:
        print("Exception when calling UserApi->create_user: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | [**User**](User.md)| Created user object |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | User created successfully |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_user**
> delete_user(username)

Delete user

This can only be done by the logged in user.

### Example


```python
import time
import gcomments
from gcomments.api import user_api
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = gcomments.Configuration(
    host = "http://localhost:8080"
)


# Enter a context with an instance of the API client
with gcomments.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = user_api.UserApi(api_client)
    username = "username_example" # str | The name that needs to be deleted

    # example passing only required values which don't have defaults set
    try:
        # Delete user
        api_instance.delete_user(username)
    except gcomments.ApiException as e:
        print("Exception when calling UserApi->delete_user: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **str**| The name that needs to be deleted |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**400** | Invalid username supplied |  -  |
**404** | User not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user_by_name**
> User get_user_by_name(username)

Get user by user name

### Example


```python
import time
import gcomments
from gcomments.api import user_api
from gcomments.model.user import User
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = gcomments.Configuration(
    host = "http://localhost:8080"
)


# Enter a context with an instance of the API client
with gcomments.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = user_api.UserApi(api_client)
    username = "username_example" # str | The name that needs to be fetched. Use user1 for testing.

    # example passing only required values which don't have defaults set
    try:
        # Get user by user name
        api_response = api_instance.get_user_by_name(username)
        pprint(api_response)
    except gcomments.ApiException as e:
        print("Exception when calling UserApi->get_user_by_name: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **str**| The name that needs to be fetched. Use user1 for testing. |

### Return type

[**User**](User.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | User fetched successfully |  -  |
**400** | Invalid username supplied |  -  |
**404** | User not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **login_user**
> str login_user(username, password)

Logs user into the system

### Example


```python
import time
import gcomments
from gcomments.api import user_api
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = gcomments.Configuration(
    host = "http://localhost:8080"
)


# Enter a context with an instance of the API client
with gcomments.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = user_api.UserApi(api_client)
    username = "username_example" # str | The user name for login
    password = "password_example" # str | The password for login in clear text

    # example passing only required values which don't have defaults set
    try:
        # Logs user into the system
        api_response = api_instance.login_user(username, password)
        pprint(api_response)
    except gcomments.ApiException as e:
        print("Exception when calling UserApi->login_user: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **str**| The user name for login |
 **password** | **str**| The password for login in clear text |

### Return type

**str**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | User login successfully |  * X-Rate-Limit - calls per hour allowed by the user <br>  * X-Expires-After - date in UTC when token expires <br>  |
**400** | Invalid username/password supplied |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logout_user**
> logout_user()

Logs out current logged in user session

### Example


```python
import time
import gcomments
from gcomments.api import user_api
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = gcomments.Configuration(
    host = "http://localhost:8080"
)


# Enter a context with an instance of the API client
with gcomments.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = user_api.UserApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # Logs out current logged in user session
        api_instance.logout_user()
    except gcomments.ApiException as e:
        print("Exception when calling UserApi->logout_user: %s\n" % e)
```


### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**0** | User logout successfully |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_user**
> update_user(username, user)

Updated user

This can only be done by the logged in user.

### Example


```python
import time
import gcomments
from gcomments.api import user_api
from gcomments.model.user import User
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = gcomments.Configuration(
    host = "http://localhost:8080"
)


# Enter a context with an instance of the API client
with gcomments.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = user_api.UserApi(api_client)
    username = "username_example" # str | name that need to be updated
    user = User(
        id="id_example",
        username="username_example",
        password="password_example",
        nice_name="nice_name_example",
        avatar_url="avatar_url_example",
        display_name="display_name_example",
        email="email_example",
        role=Role(
            name="name_example",
            capabilities=[
                "capabilities_example",
            ],
        ),
        blogs=[
            Blog(
                id="id_example",
                name="name_example",
                url="url_example",
                auth_token="auth_token_example",
                comment_status="Disabled",
            ),
        ],
        verification_status=VerificationStatus(
            is_verified=True,
            verification_timestamp=dateutil_parser('1970-01-01T00:00:00.00Z'),
            verification_method="verification_method_example",
        ),
    ) # User | Updated user object

    # example passing only required values which don't have defaults set
    try:
        # Updated user
        api_instance.update_user(username, user)
    except gcomments.ApiException as e:
        print("Exception when calling UserApi->update_user: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **str**| name that need to be updated |
 **user** | [**User**](User.md)| Updated user object |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**400** | Invalid user supplied |  -  |
**404** | User not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

