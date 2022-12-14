# Rust API client for gcomments

APIs for creating and managing comments


For more information, please visit [https://comments.app/support](https://comments.app/support)

## Overview

This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project.  By using the [openapi-spec](https://openapis.org) from a remote server, you can easily generate an API client.

- API version: 1.0.0
- Package version: 1.0.0
- Build package: `org.openapitools.codegen.languages.RustClientCodegen`

## Installation

Put the package under your project folder in a directory named `gcomments` and add the following to `Cargo.toml` under `[dependencies]`:

```
gcomments = { path = "./gcomments" }
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


To get access to the crate's generated documentation, use:

```
cargo doc --open
```

## Author

support@comments.app

