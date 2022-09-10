//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CommentApi {
  CommentApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Add a new comment
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Comment] comment (required):
  ///   Comment object that needs to be added
  Future<Response> addCommentWithHttpInfo(Comment comment,) async {
    // ignore: prefer_const_declarations
    final path = r'/comment';

    // ignore: prefer_final_locals
    Object? postBody = comment;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'application/xml'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Add a new comment
  ///
  /// Parameters:
  ///
  /// * [Comment] comment (required):
  ///   Comment object that needs to be added
  Future<void> addComment(Comment comment,) async {
    final response = await addCommentWithHttpInfo(comment,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Deletes a comment
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] commentId (required):
  ///   Comment id to delete
  ///
  /// * [String] apiKey:
  Future<Response> deleteCommentWithHttpInfo(String commentId, { String? apiKey, }) async {
    // ignore: prefer_const_declarations
    final path = r'/comment/{commentId}'
      .replaceAll('{commentId}', commentId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (apiKey != null) {
      headerParams[r'api_key'] = parameterToString(apiKey);
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Deletes a comment
  ///
  /// Parameters:
  ///
  /// * [String] commentId (required):
  ///   Comment id to delete
  ///
  /// * [String] apiKey:
  Future<void> deleteComment(String commentId, { String? apiKey, }) async {
    final response = await deleteCommentWithHttpInfo(commentId,  apiKey: apiKey, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Find comment by ID
  ///
  /// Returns a single comment
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] commentId (required):
  ///   ID of comment to return
  Future<Response> getCommentByIdWithHttpInfo(String commentId,) async {
    // ignore: prefer_const_declarations
    final path = r'/comment/{commentId}'
      .replaceAll('{commentId}', commentId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Find comment by ID
  ///
  /// Returns a single comment
  ///
  /// Parameters:
  ///
  /// * [String] commentId (required):
  ///   ID of comment to return
  Future<Comment?> getCommentById(String commentId,) async {
    final response = await getCommentByIdWithHttpInfo(commentId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Comment',) as Comment;
    
    }
    return null;
  }

  /// Update an existing comment
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Comment] comment (required):
  ///   Comment object that needs to be added
  Future<Response> updateCommentWithHttpInfo(Comment comment,) async {
    // ignore: prefer_const_declarations
    final path = r'/comment';

    // ignore: prefer_final_locals
    Object? postBody = comment;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'application/xml'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update an existing comment
  ///
  /// Parameters:
  ///
  /// * [Comment] comment (required):
  ///   Comment object that needs to be added
  Future<void> updateComment(Comment comment,) async {
    final response = await updateCommentWithHttpInfo(comment,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Updates a comment with form data
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] commentId (required):
  ///   ID of comment that needs to be updated
  ///
  /// * [String] userId:
  ///
  /// * [String] postId:
  ///
  /// * [String] blogId:
  ///
  /// * [String] parentId:
  ///
  /// * [String] authorDisplayName:
  ///
  /// * [DateTime] createdTimestamp:
  ///
  /// * [DateTime] modifiedTimestamp:
  ///
  /// * [String] content:
  ///
  /// * [String] status:
  ///
  /// * [int] downvoteCount:
  ///
  /// * [int] upvoteCount:
  ///
  /// * [Media] media:
  Future<Response> updateCommentWithFormWithHttpInfo(String commentId, { String? userId, String? postId, String? blogId, String? parentId, String? authorDisplayName, DateTime? createdTimestamp, DateTime? modifiedTimestamp, String? content, String? status, int? downvoteCount, int? upvoteCount, Media? media, }) async {
    // ignore: prefer_const_declarations
    final path = r'/comment/{commentId}'
      .replaceAll('{commentId}', commentId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/x-www-form-urlencoded'];

    if (userId != null) {
      formParams[r'userId'] = parameterToString(userId);
    }
    if (postId != null) {
      formParams[r'postId'] = parameterToString(postId);
    }
    if (blogId != null) {
      formParams[r'blogId'] = parameterToString(blogId);
    }
    if (parentId != null) {
      formParams[r'parentId'] = parameterToString(parentId);
    }
    if (authorDisplayName != null) {
      formParams[r'authorDisplayName'] = parameterToString(authorDisplayName);
    }
    if (createdTimestamp != null) {
      formParams[r'created_timestamp'] = parameterToString(createdTimestamp);
    }
    if (modifiedTimestamp != null) {
      formParams[r'modified_timestamp'] = parameterToString(modifiedTimestamp);
    }
    if (content != null) {
      formParams[r'content'] = parameterToString(content);
    }
    if (status != null) {
      formParams[r'status'] = parameterToString(status);
    }
    if (downvoteCount != null) {
      formParams[r'downvoteCount'] = parameterToString(downvoteCount);
    }
    if (upvoteCount != null) {
      formParams[r'upvoteCount'] = parameterToString(upvoteCount);
    }
    if (media != null) {
      formParams[r'media'] = parameterToString(media);
    }

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Updates a comment with form data
  ///
  /// Parameters:
  ///
  /// * [String] commentId (required):
  ///   ID of comment that needs to be updated
  ///
  /// * [String] userId:
  ///
  /// * [String] postId:
  ///
  /// * [String] blogId:
  ///
  /// * [String] parentId:
  ///
  /// * [String] authorDisplayName:
  ///
  /// * [DateTime] createdTimestamp:
  ///
  /// * [DateTime] modifiedTimestamp:
  ///
  /// * [String] content:
  ///
  /// * [String] status:
  ///
  /// * [int] downvoteCount:
  ///
  /// * [int] upvoteCount:
  ///
  /// * [Media] media:
  Future<void> updateCommentWithForm(String commentId, { String? userId, String? postId, String? blogId, String? parentId, String? authorDisplayName, DateTime? createdTimestamp, DateTime? modifiedTimestamp, String? content, String? status, int? downvoteCount, int? upvoteCount, Media? media, }) async {
    final response = await updateCommentWithFormWithHttpInfo(commentId,  userId: userId, postId: postId, blogId: blogId, parentId: parentId, authorDisplayName: authorDisplayName, createdTimestamp: createdTimestamp, modifiedTimestamp: modifiedTimestamp, content: content, status: status, downvoteCount: downvoteCount, upvoteCount: upvoteCount, media: media, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
