

# Comment


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **String** |  |  [optional] |
|**userId** | **String** |  |  [optional] |
|**postId** | **String** |  |  [optional] |
|**blogId** | **String** |  |  [optional] |
|**parentId** | **String** |  |  [optional] |
|**authorDisplayName** | **String** |  |  [optional] |
|**createdTimestamp** | **OffsetDateTime** |  |  [optional] |
|**modifiedTimestamp** | **OffsetDateTime** |  |  [optional] |
|**content** | **String** |  |  [optional] |
|**status** | [**StatusEnum**](#StatusEnum) |  |  [optional] |
|**downvoteCount** | **Integer** |  |  [optional] |
|**upvoteCount** | **Integer** |  |  [optional] |
|**media** | [**Media**](Media.md) |  |  [optional] |



## Enum: StatusEnum

| Name | Value |
|---- | -----|
| DRAFT | &quot;Draft&quot; |
| INREVIEW | &quot;InReview&quot; |
| FLAGGED | &quot;Flagged&quot; |
| PUBLISHED | &quot;Published&quot; |



