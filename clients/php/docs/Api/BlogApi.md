# OpenAPI\Client\BlogApi

All URIs are relative to http://localhost:8080.

Method | HTTP request | Description
------------- | ------------- | -------------
[**addBlog()**](BlogApi.md#addBlog) | **POST** /blog | Add a new blog
[**deleteBlog()**](BlogApi.md#deleteBlog) | **DELETE** /blog/{blogId} | Deletes a blog
[**getBlogById()**](BlogApi.md#getBlogById) | **GET** /blog/{blogId} | Find blog by ID
[**updateBlog()**](BlogApi.md#updateBlog) | **PUT** /blog | Update an existing blog
[**updateBlogWithForm()**](BlogApi.md#updateBlogWithForm) | **POST** /blog/{blogId} | Updates a blog with form data


## `addBlog()`

```php
addBlog($blog)
```

Add a new blog

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: cm_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\BlogApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$blog = new \OpenAPI\Client\Model\Blog(); // \OpenAPI\Client\Model\Blog | Blog object that needs to be added

try {
    $apiInstance->addBlog($blog);
} catch (Exception $e) {
    echo 'Exception when calling BlogApi->addBlog: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blog** | [**\OpenAPI\Client\Model\Blog**](../Model/Blog.md)| Blog object that needs to be added | [optional]

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

## `deleteBlog()`

```php
deleteBlog($blog_id, $api_key)
```

Deletes a blog

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: cm_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\BlogApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$blog_id = 'blog_id_example'; // string | Blog id to delete
$api_key = 'api_key_example'; // string

try {
    $apiInstance->deleteBlog($blog_id, $api_key);
} catch (Exception $e) {
    echo 'Exception when calling BlogApi->deleteBlog: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blog_id** | **string**| Blog id to delete |
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

## `getBlogById()`

```php
getBlogById($blog_id): \OpenAPI\Client\Model\Blog
```

Find blog by ID

Returns a single blog

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: api_key
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('api_key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api_key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\BlogApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$blog_id = 'blog_id_example'; // string | ID of blog to return

try {
    $result = $apiInstance->getBlogById($blog_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlogApi->getBlogById: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blog_id** | **string**| ID of blog to return |

### Return type

[**\OpenAPI\Client\Model\Blog**](../Model/Blog.md)

### Authorization

[api_key](../../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `updateBlog()`

```php
updateBlog($blog)
```

Update an existing blog

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: cm_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\BlogApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$blog = new \OpenAPI\Client\Model\Blog(); // \OpenAPI\Client\Model\Blog | Blog object that needs to be added

try {
    $apiInstance->updateBlog($blog);
} catch (Exception $e) {
    echo 'Exception when calling BlogApi->updateBlog: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blog** | [**\OpenAPI\Client\Model\Blog**](../Model/Blog.md)| Blog object that needs to be added | [optional]

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

## `updateBlogWithForm()`

```php
updateBlogWithForm($blog_id, $name, $url, $auth_token, $comment_status)
```

Updates a blog with form data

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: cm_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\BlogApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$blog_id = 'blog_id_example'; // string | ID of blog that needs to be updated
$name = 'name_example'; // string
$url = 'url_example'; // string
$auth_token = 'auth_token_example'; // string
$comment_status = 'comment_status_example'; // string

try {
    $apiInstance->updateBlogWithForm($blog_id, $name, $url, $auth_token, $comment_status);
} catch (Exception $e) {
    echo 'Exception when calling BlogApi->updateBlogWithForm: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blog_id** | **string**| ID of blog that needs to be updated |
 **name** | **string**|  | [optional]
 **url** | **string**|  | [optional]
 **auth_token** | **string**|  | [optional]
 **comment_status** | **string**|  | [optional]

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
