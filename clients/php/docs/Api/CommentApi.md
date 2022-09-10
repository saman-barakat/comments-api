# OpenAPI\Client\CommentApi

All URIs are relative to http://localhost:8080.

Method | HTTP request | Description
------------- | ------------- | -------------
[**addComment()**](CommentApi.md#addComment) | **POST** /comment | Add a new comment
[**deleteComment()**](CommentApi.md#deleteComment) | **DELETE** /comment/{commentId} | Deletes a comment
[**getCommentById()**](CommentApi.md#getCommentById) | **GET** /comment/{commentId} | Find comment by ID
[**updateComment()**](CommentApi.md#updateComment) | **PUT** /comment | Update an existing comment
[**updateCommentWithForm()**](CommentApi.md#updateCommentWithForm) | **POST** /comment/{commentId} | Updates a comment with form data


## `addComment()`

```php
addComment($comment)
```

Add a new comment

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: cm_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\CommentApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$comment = new \OpenAPI\Client\Model\Comment(); // \OpenAPI\Client\Model\Comment | Comment object that needs to be added

try {
    $apiInstance->addComment($comment);
} catch (Exception $e) {
    echo 'Exception when calling CommentApi->addComment: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **comment** | [**\OpenAPI\Client\Model\Comment**](../Model/Comment.md)| Comment object that needs to be added |

### Return type

void (empty response body)

### Authorization

[cm_auth](../../README.md#cm_auth)

### HTTP request headers

- **Content-Type**: `application/json`, `application/xml`
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `deleteComment()`

```php
deleteComment($comment_id, $api_key)
```

Deletes a comment

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: cm_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\CommentApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$comment_id = 'comment_id_example'; // string | Comment id to delete
$api_key = 'api_key_example'; // string

try {
    $apiInstance->deleteComment($comment_id, $api_key);
} catch (Exception $e) {
    echo 'Exception when calling CommentApi->deleteComment: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **comment_id** | **string**| Comment id to delete |
 **api_key** | **string**|  | [optional]

### Return type

void (empty response body)

### Authorization

[cm_auth](../../README.md#cm_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getCommentById()`

```php
getCommentById($comment_id): \OpenAPI\Client\Model\Comment
```

Find comment by ID

Returns a single comment

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: api_key
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('api_key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api_key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\CommentApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$comment_id = 'comment_id_example'; // string | ID of comment to return

try {
    $result = $apiInstance->getCommentById($comment_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CommentApi->getCommentById: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **comment_id** | **string**| ID of comment to return |

### Return type

[**\OpenAPI\Client\Model\Comment**](../Model/Comment.md)

### Authorization

[api_key](../../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `updateComment()`

```php
updateComment($comment)
```

Update an existing comment

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: cm_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\CommentApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$comment = new \OpenAPI\Client\Model\Comment(); // \OpenAPI\Client\Model\Comment | Comment object that needs to be added

try {
    $apiInstance->updateComment($comment);
} catch (Exception $e) {
    echo 'Exception when calling CommentApi->updateComment: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **comment** | [**\OpenAPI\Client\Model\Comment**](../Model/Comment.md)| Comment object that needs to be added |

### Return type

void (empty response body)

### Authorization

[cm_auth](../../README.md#cm_auth)

### HTTP request headers

- **Content-Type**: `application/json`, `application/xml`
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `updateCommentWithForm()`

```php
updateCommentWithForm($comment_id, $user_id, $post_id, $blog_id, $parent_id, $author_display_name, $created_timestamp, $modified_timestamp, $content, $status, $downvote_count, $upvote_count, $media)
```

Updates a comment with form data

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: cm_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\CommentApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$comment_id = 'comment_id_example'; // string | ID of comment that needs to be updated
$user_id = 'user_id_example'; // string
$post_id = 'post_id_example'; // string
$blog_id = 'blog_id_example'; // string
$parent_id = 'parent_id_example'; // string
$author_display_name = 'author_display_name_example'; // string
$created_timestamp = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime
$modified_timestamp = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime
$content = 'content_example'; // string
$status = 'status_example'; // string
$downvote_count = 56; // int
$upvote_count = 56; // int
$media = new \OpenAPI\Client\Model\Media(); // \OpenAPI\Client\Model\Media

try {
    $apiInstance->updateCommentWithForm($comment_id, $user_id, $post_id, $blog_id, $parent_id, $author_display_name, $created_timestamp, $modified_timestamp, $content, $status, $downvote_count, $upvote_count, $media);
} catch (Exception $e) {
    echo 'Exception when calling CommentApi->updateCommentWithForm: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **comment_id** | **string**| ID of comment that needs to be updated |
 **user_id** | **string**|  | [optional]
 **post_id** | **string**|  | [optional]
 **blog_id** | **string**|  | [optional]
 **parent_id** | **string**|  | [optional]
 **author_display_name** | **string**|  | [optional]
 **created_timestamp** | **\DateTime**|  | [optional]
 **modified_timestamp** | **\DateTime**|  | [optional]
 **content** | **string**|  | [optional]
 **status** | **string**|  | [optional]
 **downvote_count** | **int**|  | [optional]
 **upvote_count** | **int**|  | [optional]
 **media** | [**\OpenAPI\Client\Model\Media**](../Model/Media.md)|  | [optional]

### Return type

void (empty response body)

### Authorization

[cm_auth](../../README.md#cm_auth)

### HTTP request headers

- **Content-Type**: `application/x-www-form-urlencoded`
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
