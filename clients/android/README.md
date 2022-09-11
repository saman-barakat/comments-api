# openapi-android-client

## Requirements

Building the API client library requires [Maven](https://maven.apache.org/) to be installed.

## Installation

To install the API client library to your local Maven repository, simply execute:

```shell
mvn install
```

To deploy it to a remote Maven repository instead, configure the settings of the repository and execute:

```shell
mvn deploy
```

Refer to the [official documentation](https://maven.apache.org/plugins/maven-deploy-plugin/usage.html) for more information.

### Maven users

Add this dependency to your project's POM:

```xml
<dependency>
    <groupId>org.openapitools</groupId>
    <artifactId>openapi-android-client</artifactId>
    <version>1.0.0</version>
    <scope>compile</scope>
</dependency>
```

### Gradle users

Add this dependency to your project's build file:

```groovy
compile "org.openapitools:openapi-android-client:1.0.0"
```

### Others

At first generate the JAR by executing:

    mvn package

Then manually install the following JARs:

- target/openapi-android-client-1.0.0.jar
- target/lib/*.jar

## Getting Started

Please follow the [installation](#installation) instruction and execute the following Java code:

```java

import app.gcomment.api.BlogApi;

public class BlogApiExample {

    public static void main(String[] args) {
        BlogApi apiInstance = new BlogApi();
        Blog blog = new Blog(); // Blog | Blog object that needs to be added
        try {
            apiInstance.addBlog(blog);
        } catch (ApiException e) {
            System.err.println("Exception when calling BlogApi#addBlog");
            e.printStackTrace();
        }
    }
}

```

## Documentation for API Endpoints

All URIs are relative to *http://localhost:8080*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*BlogApi* | [**addBlog**](docs/BlogApi.md#addBlog) | **POST** /blog | Add a new blog
*BlogApi* | [**deleteBlog**](docs/BlogApi.md#deleteBlog) | **DELETE** /blog/{blogId} | Deletes a blog
*BlogApi* | [**getBlogById**](docs/BlogApi.md#getBlogById) | **GET** /blog/{blogId} | Find blog by ID
*BlogApi* | [**updateBlog**](docs/BlogApi.md#updateBlog) | **PUT** /blog | Update an existing blog
*BlogApi* | [**updateBlogWithForm**](docs/BlogApi.md#updateBlogWithForm) | **POST** /blog/{blogId} | Updates a blog with form data
*CommentApi* | [**addComment**](docs/CommentApi.md#addComment) | **POST** /comment | Add a new comment
*CommentApi* | [**deleteComment**](docs/CommentApi.md#deleteComment) | **DELETE** /comment/{commentId} | Deletes a comment
*CommentApi* | [**getCommentById**](docs/CommentApi.md#getCommentById) | **GET** /comment/{commentId} | Find comment by ID
*CommentApi* | [**updateComment**](docs/CommentApi.md#updateComment) | **PUT** /comment | Update an existing comment
*CommentApi* | [**updateCommentWithForm**](docs/CommentApi.md#updateCommentWithForm) | **POST** /comment/{commentId} | Updates a comment with form data
*PostApi* | [**addPost**](docs/PostApi.md#addPost) | **POST** /post | Add a new post
*PostApi* | [**deletePost**](docs/PostApi.md#deletePost) | **DELETE** /post/{postId} | Deletes a post
*PostApi* | [**getPostById**](docs/PostApi.md#getPostById) | **GET** /post/{postId} | Find post by ID
*PostApi* | [**updatePost**](docs/PostApi.md#updatePost) | **PUT** /post | Update an existing post
*PostApi* | [**updatePostWithForm**](docs/PostApi.md#updatePostWithForm) | **POST** /post/{postId} | Updates a post with form data
*UserApi* | [**createUser**](docs/UserApi.md#createUser) | **POST** /user | Create user
*UserApi* | [**deleteUser**](docs/UserApi.md#deleteUser) | **DELETE** /user/{username} | Delete user
*UserApi* | [**getUserByName**](docs/UserApi.md#getUserByName) | **GET** /user/{username} | Get user by user name
*UserApi* | [**loginUser**](docs/UserApi.md#loginUser) | **GET** /user/login | Logs user into the system
*UserApi* | [**logoutUser**](docs/UserApi.md#logoutUser) | **GET** /user/logout | Logs out current logged in user session
*UserApi* | [**updateUser**](docs/UserApi.md#updateUser) | **PUT** /user/{username} | Updated user


## Documentation for Models

 - [Blog](docs/Blog.md)
 - [Comment](docs/Comment.md)
 - [Media](docs/Media.md)
 - [Post](docs/Post.md)
 - [Role](docs/Role.md)
 - [User](docs/User.md)
 - [VerificationStatus](docs/VerificationStatus.md)


## Documentation for Authorization

Authentication schemes defined for the API:
### api_key

- **Type**: API key

- **API key parameter name**: api_key
- **Location**: HTTP header

### cm_auth


- **Type**: OAuth
- **Flow**: implicit
- **Authorization URL**: http://petstore.swagger.io/oauth/dialog
- **Scopes**: 
  - write: modify
  - read: read


## Recommendation

It's recommended to create an instance of `ApiClient` per thread in a multithreaded environment to avoid any potential issues.

## Author

email@gmail.com

