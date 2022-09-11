# OpenapiClient::Comment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of this comment. | [optional] |
| **user_id** | **String** | The ID of the author. | [optional] |
| **post_id** | **String** | The ID of the post hosting this comment. | [optional] |
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

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Comment.new(
  id: null,
  user_id: null,
  post_id: null,
  blog_id: null,
  parent_id: null,
  author_display_name: null,
  created_timestamp: null,
  modified_timestamp: null,
  content: null,
  status: null,
  downvote_count: null,
  upvote_count: null,
  media: null
)
```

