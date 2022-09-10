# OpenapiClient::User

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **username** | **String** |  | [optional] |
| **password** | **String** |  | [optional] |
| **nice_name** | **String** |  | [optional] |
| **avatar_url** | **String** |  | [optional] |
| **display_name** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **role** | [**Role**](Role.md) |  | [optional] |
| **blogs** | [**Array&lt;Blog&gt;**](Blog.md) |  | [optional] |
| **verification_status** | [**VerificationStatus**](VerificationStatus.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::User.new(
  id: null,
  username: null,
  password: null,
  nice_name: null,
  avatar_url: null,
  display_name: null,
  email: null,
  role: null,
  blogs: null,
  verification_status: null
)
```

