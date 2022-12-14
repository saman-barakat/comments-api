# g_comments

GComments - JavaScript client for g_comments
APIs for creating and managing comments

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0.0
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.JavascriptClientCodegen
For more information, please visit [https://comments.app/support](https://comments.app/support)

## Installation

### For [Node.js](https://nodejs.org/)

#### npm

To publish the library as a [npm](https://www.npmjs.com/), please follow the procedure in ["Publishing npm packages"](https://docs.npmjs.com/getting-started/publishing-npm-packages).

Then install it via:

```shell
npm install g_comments --save
```

Finally, you need to build the module:

```shell
npm run build
```

##### Local development

To use the library locally without publishing to a remote npm registry, first install the dependencies by changing into the directory containing `package.json` (and this README). Let's call this `JAVASCRIPT_CLIENT_DIR`. Then run:

```shell
npm install
```

Next, [link](https://docs.npmjs.com/cli/link) it globally in npm with the following, also from `JAVASCRIPT_CLIENT_DIR`:

```shell
npm link
```

To use the link you just defined in your project, switch to the directory you want to use your g_comments from, and run:

```shell
npm link /path/to/<JAVASCRIPT_CLIENT_DIR>
```

Finally, you need to build the module:

```shell
npm run build
```

#### git

If the library is hosted at a git repository, e.g.https://github.com/GIT_USER_ID/GIT_REPO_ID
then install it via:

```shell
    npm install GIT_USER_ID/GIT_REPO_ID --save
```

### For browser

The library also works in the browser environment via npm and [browserify](http://browserify.org/). After following
the above steps with Node.js and installing browserify with `npm install -g browserify`,
perform the following (assuming *main.js* is your entry file):

```shell
browserify main.js > bundle.js
```

Then include *bundle.js* in the HTML pages.

### Webpack Configuration

Using Webpack you may encounter the following error: "Module not found: Error:
Cannot resolve module", most certainly you should disable AMD loader. Add/merge
the following section to your webpack config:

```javascript
module: {
  rules: [
    {
      parser: {
        amd: false
      }
    }
  ]
}
```

## Getting Started

Please follow the [installation](#installation) instruction and execute the following JS code:

```javascript
var GComments = require('g_comments');

var defaultClient = GComments.ApiClient.instance;
// Configure OAuth2 access token for authorization: cm_auth
var cm_auth = defaultClient.authentications['cm_auth'];
cm_auth.accessToken = "YOUR ACCESS TOKEN"

var api = new GComments.BlogApi()
var opts = {
  'blog': new GComments.Blog() // {Blog} Blog object that needs to be added
};
var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
};
api.addBlog(opts, callback);

```

## Documentation for API Endpoints

All URIs are relative to *http://localhost:8080*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*GComments.BlogApi* | [**addBlog**](docs/BlogApi.md#addBlog) | **POST** /blog | Add a new blog
*GComments.BlogApi* | [**deleteBlog**](docs/BlogApi.md#deleteBlog) | **DELETE** /blog/{blogId} | Deletes a blog
*GComments.BlogApi* | [**getBlogById**](docs/BlogApi.md#getBlogById) | **GET** /blog/{blogId} | Find blog by ID
*GComments.BlogApi* | [**updateBlog**](docs/BlogApi.md#updateBlog) | **PUT** /blog | Update an existing blog
*GComments.BlogApi* | [**updateBlogWithForm**](docs/BlogApi.md#updateBlogWithForm) | **POST** /blog/{blogId} | Updates a blog with form data
*GComments.CommentApi* | [**addComment**](docs/CommentApi.md#addComment) | **POST** /comment | Add a new comment
*GComments.CommentApi* | [**deleteComment**](docs/CommentApi.md#deleteComment) | **DELETE** /comment/{commentId} | Deletes a comment
*GComments.CommentApi* | [**getCommentById**](docs/CommentApi.md#getCommentById) | **GET** /comment/{commentId} | Find comment by ID
*GComments.CommentApi* | [**updateComment**](docs/CommentApi.md#updateComment) | **PUT** /comment | Update an existing comment
*GComments.CommentApi* | [**updateCommentWithForm**](docs/CommentApi.md#updateCommentWithForm) | **POST** /comment/{commentId} | Updates a comment with form data
*GComments.PostApi* | [**addPost**](docs/PostApi.md#addPost) | **POST** /post | Add a new post
*GComments.PostApi* | [**deletePost**](docs/PostApi.md#deletePost) | **DELETE** /post/{postId} | Deletes a post
*GComments.PostApi* | [**getPostById**](docs/PostApi.md#getPostById) | **GET** /post/{postId} | Find post by ID
*GComments.PostApi* | [**updatePost**](docs/PostApi.md#updatePost) | **PUT** /post | Update an existing post
*GComments.PostApi* | [**updatePostWithForm**](docs/PostApi.md#updatePostWithForm) | **POST** /post/{postId} | Updates a post with form data
*GComments.UserApi* | [**createUser**](docs/UserApi.md#createUser) | **POST** /user | Create user
*GComments.UserApi* | [**deleteUser**](docs/UserApi.md#deleteUser) | **DELETE** /user/{username} | Delete user
*GComments.UserApi* | [**getUserByName**](docs/UserApi.md#getUserByName) | **GET** /user/{username} | Get user by user name
*GComments.UserApi* | [**loginUser**](docs/UserApi.md#loginUser) | **GET** /user/login | Logs user into the system
*GComments.UserApi* | [**logoutUser**](docs/UserApi.md#logoutUser) | **GET** /user/logout | Logs out current logged in user session
*GComments.UserApi* | [**updateUser**](docs/UserApi.md#updateUser) | **PUT** /user/{username} | Updated user


## Documentation for Models

 - [GComments.Blog](docs/Blog.md)
 - [GComments.Comment](docs/Comment.md)
 - [GComments.Media](docs/Media.md)
 - [GComments.Post](docs/Post.md)
 - [GComments.Role](docs/Role.md)
 - [GComments.User](docs/User.md)
 - [GComments.VerificationStatus](docs/VerificationStatus.md)


## Documentation for Authorization



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

