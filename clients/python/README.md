# gcomments
APIs for creating and managing comments


This Python package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0.0
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.PythonClientCodegen
For more information, please visit [https://comments.app/support](https://comments.app/support)

## Requirements.

Python >=3.6

## Installation & Usage
### pip install

If the python package is hosted on a repository, you can install directly using:

```sh
pip install git+https://github.com/GIT_USER_ID/GIT_REPO_ID.git
```
(you may need to run `pip` with root permission: `sudo pip install git+https://github.com/GIT_USER_ID/GIT_REPO_ID.git`)

Then import the package:
```python
import gcomments
```

### Setuptools

Install via [Setuptools](http://pypi.python.org/pypi/setuptools).

```sh
python setup.py install --user
```
(or `sudo python setup.py install` to install the package for all users)

Then import the package:
```python
import gcomments
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```python

import time
import gcomments
from pprint import pprint
from gcomments.api import blog_api
from gcomments.model.blog import Blog
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
    api_instance = blog_api.BlogApi(api_client)
    blog = Blog(
        id="id_example",
        name="name_example",
        url="url_example",
        auth_token="auth_token_example",
        comment_status="Disabled",
    ) # Blog | Blog object that needs to be added (optional)

    try:
        # Add a new blog
        api_instance.add_blog(blog=blog)
    except gcomments.ApiException as e:
        print("Exception when calling BlogApi->add_blog: %s\n" % e)
```

## Documentation for API Endpoints

All URIs are relative to *http://localhost:8080*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*BlogApi* | [**add_blog**](docs/BlogApi.md#add_blog) | **POST** /blog | Add a new blog
*BlogApi* | [**delete_blog**](docs/BlogApi.md#delete_blog) | **DELETE** /blog/{blogId} | Deletes a blog
*BlogApi* | [**get_blog_by_id**](docs/BlogApi.md#get_blog_by_id) | **GET** /blog/{blogId} | Find blog by ID
*BlogApi* | [**update_blog**](docs/BlogApi.md#update_blog) | **PUT** /blog | Update an existing blog
*BlogApi* | [**update_blog_with_form**](docs/BlogApi.md#update_blog_with_form) | **POST** /blog/{blogId} | Updates a blog with form data
*CommentApi* | [**add_comment**](docs/CommentApi.md#add_comment) | **POST** /comment | Add a new comment
*CommentApi* | [**delete_comment**](docs/CommentApi.md#delete_comment) | **DELETE** /comment/{commentId} | Deletes a comment
*CommentApi* | [**get_comment_by_id**](docs/CommentApi.md#get_comment_by_id) | **GET** /comment/{commentId} | Find comment by ID
*CommentApi* | [**update_comment**](docs/CommentApi.md#update_comment) | **PUT** /comment | Update an existing comment
*CommentApi* | [**update_comment_with_form**](docs/CommentApi.md#update_comment_with_form) | **POST** /comment/{commentId} | Updates a comment with form data
*PostApi* | [**add_post**](docs/PostApi.md#add_post) | **POST** /post | Add a new post
*PostApi* | [**delete_post**](docs/PostApi.md#delete_post) | **DELETE** /post/{postId} | Deletes a post
*PostApi* | [**get_post_by_id**](docs/PostApi.md#get_post_by_id) | **GET** /post/{postId} | Find post by ID
*PostApi* | [**update_post**](docs/PostApi.md#update_post) | **PUT** /post | Update an existing post
*PostApi* | [**update_post_with_form**](docs/PostApi.md#update_post_with_form) | **POST** /post/{postId} | Updates a post with form data
*UserApi* | [**create_user**](docs/UserApi.md#create_user) | **POST** /user | Create user
*UserApi* | [**delete_user**](docs/UserApi.md#delete_user) | **DELETE** /user/{username} | Delete user
*UserApi* | [**get_user_by_name**](docs/UserApi.md#get_user_by_name) | **GET** /user/{username} | Get user by user name
*UserApi* | [**login_user**](docs/UserApi.md#login_user) | **GET** /user/login | Logs user into the system
*UserApi* | [**logout_user**](docs/UserApi.md#logout_user) | **GET** /user/logout | Logs out current logged in user session
*UserApi* | [**update_user**](docs/UserApi.md#update_user) | **PUT** /user/{username} | Updated user


## Documentation For Models

 - [Blog](docs/Blog.md)
 - [Comment](docs/Comment.md)
 - [Media](docs/Media.md)
 - [Post](docs/Post.md)
 - [Role](docs/Role.md)
 - [User](docs/User.md)
 - [VerificationStatus](docs/VerificationStatus.md)


## Documentation For Authorization


## api_key

- **Type**: API key
- **API key parameter name**: api_key
- **Location**: HTTP header


## cm_auth

- **Type**: OAuth
- **Flow**: implicit
- **Authorization URL**: http://petstore.swagger.io/oauth/dialog
- **Scopes**: 
 - **write**: modify
 - **read**: read


## Author

support@comments.app


## Notes for Large OpenAPI documents
If the OpenAPI document is large, imports in gcomments.apis and gcomments.models may fail with a
RecursionError indicating the maximum recursion limit has been exceeded. In that case, there are a couple of solutions:

Solution 1:
Use specific imports for apis and models like:
- `from gcomments.api.default_api import DefaultApi`
- `from gcomments.model.pet import Pet`

Solution 2:
Before importing the package, adjust the maximum recursion limit as shown below:
```
import sys
sys.setrecursionlimit(1500)
import gcomments
from gcomments.apis import *
from gcomments.models import *
```

