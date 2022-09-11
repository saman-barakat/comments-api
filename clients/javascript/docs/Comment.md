# GComments.Comment

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The ID of this comment. | [optional] 
**userId** | **String** | The ID of the author. | [optional] 
**postId** | **String** | The ID of the post hosting this comment. | [optional] 
**blogId** | **String** |  | [optional] 
**parentId** | **String** |  | [optional] 
**authorDisplayName** | **String** |  | [optional] 
**createdTimestamp** | **Date** |  | [optional] 
**modifiedTimestamp** | **Date** |  | [optional] 
**content** | **String** |  | [optional] 
**status** | **String** |  | [optional] 
**downvoteCount** | **Number** |  | [optional] 
**upvoteCount** | **Number** |  | [optional] 
**media** | [**Media**](Media.md) |  | [optional] 



## Enum: StatusEnum


* `Draft` (value: `"Draft"`)

* `InReview` (value: `"InReview"`)

* `Flagged` (value: `"Flagged"`)

* `Published` (value: `"Published"`)

* `Deleted` (value: `"Deleted"`)




