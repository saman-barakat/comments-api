# OpenapiClient::BlogApi

All URIs are relative to *http://localhost:8080*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_blog**](BlogApi.md#add_blog) | **POST** /blog | Add a new blog |
| [**delete_blog**](BlogApi.md#delete_blog) | **DELETE** /blog/{blogId} | Deletes a blog |
| [**get_blog_by_id**](BlogApi.md#get_blog_by_id) | **GET** /blog/{blogId} | Find blog by ID |
| [**update_blog**](BlogApi.md#update_blog) | **PUT** /blog | Update an existing blog |
| [**update_blog_with_form**](BlogApi.md#update_blog_with_form) | **POST** /blog/{blogId} | Updates a blog with form data |


## add_blog

> add_blog(opts)

Add a new blog

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: cm_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::BlogApi.new
opts = {
  blog: OpenapiClient::Blog.new # Blog | Blog object that needs to be added
}

begin
  # Add a new blog
  api_instance.add_blog(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling BlogApi->add_blog: #{e}"
end
```

#### Using the add_blog_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> add_blog_with_http_info(opts)

```ruby
begin
  # Add a new blog
  data, status_code, headers = api_instance.add_blog_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling BlogApi->add_blog_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blog** | [**Blog**](Blog.md) | Blog object that needs to be added | [optional] |

### Return type

nil (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: Not defined


## delete_blog

> delete_blog(blog_id, opts)

Deletes a blog

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: cm_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::BlogApi.new
blog_id = 'blog_id_example' # String | Blog id to delete
opts = {
  api_key: 'api_key_example' # String | 
}

begin
  # Deletes a blog
  api_instance.delete_blog(blog_id, opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling BlogApi->delete_blog: #{e}"
end
```

#### Using the delete_blog_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_blog_with_http_info(blog_id, opts)

```ruby
begin
  # Deletes a blog
  data, status_code, headers = api_instance.delete_blog_with_http_info(blog_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling BlogApi->delete_blog_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blog_id** | **String** | Blog id to delete |  |
| **api_key** | **String** |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_blog_by_id

> <Blog> get_blog_by_id(blog_id)

Find blog by ID

Returns a single blog

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

api_instance = OpenapiClient::BlogApi.new
blog_id = 'blog_id_example' # String | ID of blog to return

begin
  # Find blog by ID
  result = api_instance.get_blog_by_id(blog_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling BlogApi->get_blog_by_id: #{e}"
end
```

#### Using the get_blog_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Blog>, Integer, Hash)> get_blog_by_id_with_http_info(blog_id)

```ruby
begin
  # Find blog by ID
  data, status_code, headers = api_instance.get_blog_by_id_with_http_info(blog_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Blog>
rescue OpenapiClient::ApiError => e
  puts "Error when calling BlogApi->get_blog_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blog_id** | **String** | ID of blog to return |  |

### Return type

[**Blog**](Blog.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## update_blog

> update_blog(opts)

Update an existing blog

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: cm_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::BlogApi.new
opts = {
  blog: OpenapiClient::Blog.new # Blog | Blog object that needs to be added
}

begin
  # Update an existing blog
  api_instance.update_blog(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling BlogApi->update_blog: #{e}"
end
```

#### Using the update_blog_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_blog_with_http_info(opts)

```ruby
begin
  # Update an existing blog
  data, status_code, headers = api_instance.update_blog_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling BlogApi->update_blog_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blog** | [**Blog**](Blog.md) | Blog object that needs to be added | [optional] |

### Return type

nil (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: Not defined


## update_blog_with_form

> update_blog_with_form(blog_id, opts)

Updates a blog with form data

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: cm_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::BlogApi.new
blog_id = 'blog_id_example' # String | ID of blog that needs to be updated
opts = {
  name: 'name_example', # String | 
  url: 'url_example', # String | 
  auth_token: 'auth_token_example', # String | 
  comment_status: 'Disabled' # String | 
}

begin
  # Updates a blog with form data
  api_instance.update_blog_with_form(blog_id, opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling BlogApi->update_blog_with_form: #{e}"
end
```

#### Using the update_blog_with_form_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_blog_with_form_with_http_info(blog_id, opts)

```ruby
begin
  # Updates a blog with form data
  data, status_code, headers = api_instance.update_blog_with_form_with_http_info(blog_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling BlogApi->update_blog_with_form_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blog_id** | **String** | ID of blog that needs to be updated |  |
| **name** | **String** |  | [optional] |
| **url** | **String** |  | [optional] |
| **auth_token** | **String** |  | [optional] |
| **comment_status** | **String** |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: Not defined

