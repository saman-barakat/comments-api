# OpenAPI\Client\PostApi

All URIs are relative to http://localhost:8080.

Method | HTTP request | Description
------------- | ------------- | -------------
[**addPost()**](PostApi.md#addPost) | **POST** /post | Add a new post
[**deletePost()**](PostApi.md#deletePost) | **DELETE** /post/{postId} | Deletes a post
[**getPostById()**](PostApi.md#getPostById) | **GET** /post/{postId} | Find post by ID
[**updatePost()**](PostApi.md#updatePost) | **PUT** /post | Update an existing post
[**updatePostWithForm()**](PostApi.md#updatePostWithForm) | **POST** /post/{postId} | Updates a post with form data


## `addPost()`

```php
addPost($post)
```

Add a new post

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: cm_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\PostApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$post = new \OpenAPI\Client\Model\Post(); // \OpenAPI\Client\Model\Post | Post object that needs to be added

try {
    $apiInstance->addPost($post);
} catch (Exception $e) {
    echo 'Exception when calling PostApi->addPost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **post** | [**\OpenAPI\Client\Model\Post**](../Model/Post.md)| Post object that needs to be added | [optional]

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

## `deletePost()`

```php
deletePost($post_id, $api_key)
```

Deletes a post

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: cm_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\PostApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$post_id = 'post_id_example'; // string | Post id to delete
$api_key = 'api_key_example'; // string

try {
    $apiInstance->deletePost($post_id, $api_key);
} catch (Exception $e) {
    echo 'Exception when calling PostApi->deletePost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **post_id** | **string**| Post id to delete |
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

## `getPostById()`

```php
getPostById($post_id): \OpenAPI\Client\Model\Post
```

Find post by ID

Returns a single post

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: api_key
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('api_key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api_key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\PostApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$post_id = 'post_id_example'; // string | ID of post to return

try {
    $result = $apiInstance->getPostById($post_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PostApi->getPostById: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **post_id** | **string**| ID of post to return |

### Return type

[**\OpenAPI\Client\Model\Post**](../Model/Post.md)

### Authorization

[api_key](../../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `updatePost()`

```php
updatePost($post)
```

Update an existing post

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: cm_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\PostApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$post = new \OpenAPI\Client\Model\Post(); // \OpenAPI\Client\Model\Post | Post object that needs to be added

try {
    $apiInstance->updatePost($post);
} catch (Exception $e) {
    echo 'Exception when calling PostApi->updatePost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **post** | [**\OpenAPI\Client\Model\Post**](../Model/Post.md)| Post object that needs to be added | [optional]

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

## `updatePostWithForm()`

```php
updatePostWithForm($post_id, $title, $url, $excerpt, $content, $comment_status, $post_type)
```

Updates a post with form data

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: cm_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\PostApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$post_id = 'post_id_example'; // string | ID of post that needs to be updated
$title = 'title_example'; // string
$url = 'url_example'; // string
$excerpt = 'excerpt_example'; // string
$content = 'content_example'; // string
$comment_status = 'comment_status_example'; // string
$post_type = 'post_type_example'; // string

try {
    $apiInstance->updatePostWithForm($post_id, $title, $url, $excerpt, $content, $comment_status, $post_type);
} catch (Exception $e) {
    echo 'Exception when calling PostApi->updatePostWithForm: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **post_id** | **string**| ID of post that needs to be updated |
 **title** | **string**|  | [optional]
 **url** | **string**|  | [optional]
 **excerpt** | **string**|  | [optional]
 **content** | **string**|  | [optional]
 **comment_status** | **string**|  | [optional]
 **post_type** | **string**|  | [optional]

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
