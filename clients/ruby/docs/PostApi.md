# OpenapiClient::PostApi

All URIs are relative to *http://localhost:8080*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_post**](PostApi.md#add_post) | **POST** /post | Add a new post |
| [**delete_post**](PostApi.md#delete_post) | **DELETE** /post/{postId} | Deletes a post |
| [**get_post_by_id**](PostApi.md#get_post_by_id) | **GET** /post/{postId} | Find post by ID |
| [**update_post**](PostApi.md#update_post) | **PUT** /post | Update an existing post |
| [**update_post_with_form**](PostApi.md#update_post_with_form) | **POST** /post/{postId} | Updates a post with form data |


## add_post

> add_post(opts)

Add a new post

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: cm_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::PostApi.new
opts = {
  post: OpenapiClient::Post.new # Post | Post object that needs to be added
}

begin
  # Add a new post
  api_instance.add_post(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling PostApi->add_post: #{e}"
end
```

#### Using the add_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> add_post_with_http_info(opts)

```ruby
begin
  # Add a new post
  data, status_code, headers = api_instance.add_post_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling PostApi->add_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post** | [**Post**](Post.md) | Post object that needs to be added | [optional] |

### Return type

nil (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: Not defined


## delete_post

> delete_post(post_id, opts)

Deletes a post

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: cm_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::PostApi.new
post_id = 'post_id_example' # String | Post id to delete
opts = {
  api_key: 'api_key_example' # String | 
}

begin
  # Deletes a post
  api_instance.delete_post(post_id, opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling PostApi->delete_post: #{e}"
end
```

#### Using the delete_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_post_with_http_info(post_id, opts)

```ruby
begin
  # Deletes a post
  data, status_code, headers = api_instance.delete_post_with_http_info(post_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling PostApi->delete_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_id** | **String** | Post id to delete |  |
| **api_key** | **String** |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_post_by_id

> <Post> get_post_by_id(post_id)

Find post by ID

Returns a single post

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = OpenapiClient::PostApi.new
post_id = 'post_id_example' # String | ID of post to return

begin
  # Find post by ID
  result = api_instance.get_post_by_id(post_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PostApi->get_post_by_id: #{e}"
end
```

#### Using the get_post_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Post>, Integer, Hash)> get_post_by_id_with_http_info(post_id)

```ruby
begin
  # Find post by ID
  data, status_code, headers = api_instance.get_post_by_id_with_http_info(post_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Post>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PostApi->get_post_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_id** | **String** | ID of post to return |  |

### Return type

[**Post**](Post.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## update_post

> update_post(opts)

Update an existing post

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: cm_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::PostApi.new
opts = {
  post: OpenapiClient::Post.new # Post | Post object that needs to be added
}

begin
  # Update an existing post
  api_instance.update_post(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling PostApi->update_post: #{e}"
end
```

#### Using the update_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_post_with_http_info(opts)

```ruby
begin
  # Update an existing post
  data, status_code, headers = api_instance.update_post_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling PostApi->update_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post** | [**Post**](Post.md) | Post object that needs to be added | [optional] |

### Return type

nil (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: Not defined


## update_post_with_form

> update_post_with_form(post_id, opts)

Updates a post with form data

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: cm_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::PostApi.new
post_id = 'post_id_example' # String | ID of post that needs to be updated
opts = {
  title: 'title_example', # String | 
  url: 'url_example', # String | 
  excerpt: 'excerpt_example', # String | 
  content: 'content_example', # String | 
  comment_status: 'Disabled', # String | 
  post_type: 'post_type_example' # String | 
}

begin
  # Updates a post with form data
  api_instance.update_post_with_form(post_id, opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling PostApi->update_post_with_form: #{e}"
end
```

#### Using the update_post_with_form_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_post_with_form_with_http_info(post_id, opts)

```ruby
begin
  # Updates a post with form data
  data, status_code, headers = api_instance.update_post_with_form_with_http_info(post_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling PostApi->update_post_with_form_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_id** | **String** | ID of post that needs to be updated |  |
| **title** | **String** |  | [optional] |
| **url** | **String** |  | [optional] |
| **excerpt** | **String** |  | [optional] |
| **content** | **String** |  | [optional] |
| **comment_status** | **String** |  | [optional] |
| **post_type** | **String** |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: Not defined

