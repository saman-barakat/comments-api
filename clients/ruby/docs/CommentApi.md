# OpenapiClient::CommentApi

All URIs are relative to *http://localhost:8080*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_comment**](CommentApi.md#add_comment) | **POST** /comment | Add a new comment |
| [**delete_comment**](CommentApi.md#delete_comment) | **DELETE** /comment/{commentId} | Deletes a comment |
| [**get_comment_by_id**](CommentApi.md#get_comment_by_id) | **GET** /comment/{commentId} | Find comment by ID |
| [**update_comment**](CommentApi.md#update_comment) | **PUT** /comment | Update an existing comment |
| [**update_comment_with_form**](CommentApi.md#update_comment_with_form) | **POST** /comment/{commentId} | Updates a comment with form data |


## add_comment

> add_comment(comment)

Add a new comment

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: cm_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::CommentApi.new
comment = OpenapiClient::Comment.new # Comment | Comment object that needs to be added

begin
  # Add a new comment
  api_instance.add_comment(comment)
rescue OpenapiClient::ApiError => e
  puts "Error when calling CommentApi->add_comment: #{e}"
end
```

#### Using the add_comment_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> add_comment_with_http_info(comment)

```ruby
begin
  # Add a new comment
  data, status_code, headers = api_instance.add_comment_with_http_info(comment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling CommentApi->add_comment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comment** | [**Comment**](Comment.md) | Comment object that needs to be added |  |

### Return type

nil (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: Not defined


## delete_comment

> delete_comment(comment_id, opts)

Deletes a comment

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: cm_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::CommentApi.new
comment_id = 'comment_id_example' # String | Comment id to delete
opts = {
  api_key: 'api_key_example' # String | 
}

begin
  # Deletes a comment
  api_instance.delete_comment(comment_id, opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling CommentApi->delete_comment: #{e}"
end
```

#### Using the delete_comment_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_comment_with_http_info(comment_id, opts)

```ruby
begin
  # Deletes a comment
  data, status_code, headers = api_instance.delete_comment_with_http_info(comment_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling CommentApi->delete_comment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comment_id** | **String** | Comment id to delete |  |
| **api_key** | **String** |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_comment_by_id

> <Comment> get_comment_by_id(comment_id)

Find comment by ID

Returns a single comment

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

api_instance = OpenapiClient::CommentApi.new
comment_id = 'comment_id_example' # String | ID of comment to return

begin
  # Find comment by ID
  result = api_instance.get_comment_by_id(comment_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CommentApi->get_comment_by_id: #{e}"
end
```

#### Using the get_comment_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Comment>, Integer, Hash)> get_comment_by_id_with_http_info(comment_id)

```ruby
begin
  # Find comment by ID
  data, status_code, headers = api_instance.get_comment_by_id_with_http_info(comment_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Comment>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CommentApi->get_comment_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comment_id** | **String** | ID of comment to return |  |

### Return type

[**Comment**](Comment.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## update_comment

> update_comment(comment)

Update an existing comment

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: cm_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::CommentApi.new
comment = OpenapiClient::Comment.new # Comment | Comment object that needs to be added

begin
  # Update an existing comment
  api_instance.update_comment(comment)
rescue OpenapiClient::ApiError => e
  puts "Error when calling CommentApi->update_comment: #{e}"
end
```

#### Using the update_comment_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_comment_with_http_info(comment)

```ruby
begin
  # Update an existing comment
  data, status_code, headers = api_instance.update_comment_with_http_info(comment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling CommentApi->update_comment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comment** | [**Comment**](Comment.md) | Comment object that needs to be added |  |

### Return type

nil (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: Not defined


## update_comment_with_form

> update_comment_with_form(comment_id, opts)

Updates a comment with form data

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: cm_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::CommentApi.new
comment_id = 'comment_id_example' # String | ID of comment that needs to be updated
opts = {
  user_id: 'user_id_example', # String | 
  post_id: 'post_id_example', # String | 
  blog_id: 'blog_id_example', # String | 
  parent_id: 'parent_id_example', # String | 
  author_display_name: 'author_display_name_example', # String | 
  created_timestamp: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  modified_timestamp: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  content: 'content_example', # String | 
  status: 'Draft', # String | 
  downvote_count: 56, # Integer | 
  upvote_count: 56, # Integer | 
  media: OpenapiClient::Media.new # Media | 
}

begin
  # Updates a comment with form data
  api_instance.update_comment_with_form(comment_id, opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling CommentApi->update_comment_with_form: #{e}"
end
```

#### Using the update_comment_with_form_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_comment_with_form_with_http_info(comment_id, opts)

```ruby
begin
  # Updates a comment with form data
  data, status_code, headers = api_instance.update_comment_with_form_with_http_info(comment_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling CommentApi->update_comment_with_form_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comment_id** | **String** | ID of comment that needs to be updated |  |
| **user_id** | **String** |  | [optional] |
| **post_id** | **String** |  | [optional] |
| **blog_id** | **String** |  | [optional] |
| **parent_id** | **String** |  | [optional] |
| **author_display_name** | **String** |  | [optional] |
| **created_timestamp** | **Time** |  | [optional] |
| **modified_timestamp** | **Time** |  | [optional] |
| **content** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **downvote_count** | **Integer** |  | [optional] |
| **upvote_count** | **Integer** |  | [optional] |
| **media** | [**Media**](Media.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[cm_auth](../README.md#cm_auth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: Not defined

