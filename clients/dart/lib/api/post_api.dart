//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class PostApi {
  PostApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Add a new post
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Post] post:
  ///   Post object that needs to be added
  Future<Response> addPostWithHttpInfo({ Post? post, }) async {
    // ignore: prefer_const_declarations
    final path = r'/post';

    // ignore: prefer_final_locals
    Object? postBody = post;

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

  /// Add a new post
  ///
  /// Parameters:
  ///
  /// * [Post] post:
  ///   Post object that needs to be added
  Future<void> addPost({ Post? post, }) async {
    final response = await addPostWithHttpInfo( post: post, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Deletes a post
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] postId (required):
  ///   Post id to delete
  ///
  /// * [String] apiKey:
  Future<Response> deletePostWithHttpInfo(String postId, { String? apiKey, }) async {
    // ignore: prefer_const_declarations
    final path = r'/post/{postId}'
      .replaceAll('{postId}', postId);

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

  /// Deletes a post
  ///
  /// Parameters:
  ///
  /// * [String] postId (required):
  ///   Post id to delete
  ///
  /// * [String] apiKey:
  Future<void> deletePost(String postId, { String? apiKey, }) async {
    final response = await deletePostWithHttpInfo(postId,  apiKey: apiKey, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Find post by ID
  ///
  /// Returns a single post
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] postId (required):
  ///   ID of post to return
  Future<Response> getPostByIdWithHttpInfo(String postId,) async {
    // ignore: prefer_const_declarations
    final path = r'/post/{postId}'
      .replaceAll('{postId}', postId);

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

  /// Find post by ID
  ///
  /// Returns a single post
  ///
  /// Parameters:
  ///
  /// * [String] postId (required):
  ///   ID of post to return
  Future<Post?> getPostById(String postId,) async {
    final response = await getPostByIdWithHttpInfo(postId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Post',) as Post;
    
    }
    return null;
  }

  /// Update an existing post
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Post] post:
  ///   Post object that needs to be added
  Future<Response> updatePostWithHttpInfo({ Post? post, }) async {
    // ignore: prefer_const_declarations
    final path = r'/post';

    // ignore: prefer_final_locals
    Object? postBody = post;

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

  /// Update an existing post
  ///
  /// Parameters:
  ///
  /// * [Post] post:
  ///   Post object that needs to be added
  Future<void> updatePost({ Post? post, }) async {
    final response = await updatePostWithHttpInfo( post: post, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Updates a post with form data
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] postId (required):
  ///   ID of post that needs to be updated
  ///
  /// * [String] title:
  ///
  /// * [String] url:
  ///
  /// * [String] excerpt:
  ///
  /// * [String] content:
  ///
  /// * [String] commentStatus:
  ///
  /// * [String] postType:
  Future<Response> updatePostWithFormWithHttpInfo(String postId, { String? title, String? url, String? excerpt, String? content, String? commentStatus, String? postType, }) async {
    // ignore: prefer_const_declarations
    final path = r'/post/{postId}'
      .replaceAll('{postId}', postId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/x-www-form-urlencoded'];

    if (title != null) {
      formParams[r'title'] = parameterToString(title);
    }
    if (url != null) {
      formParams[r'url'] = parameterToString(url);
    }
    if (excerpt != null) {
      formParams[r'excerpt'] = parameterToString(excerpt);
    }
    if (content != null) {
      formParams[r'content'] = parameterToString(content);
    }
    if (commentStatus != null) {
      formParams[r'commentStatus'] = parameterToString(commentStatus);
    }
    if (postType != null) {
      formParams[r'postType'] = parameterToString(postType);
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

  /// Updates a post with form data
  ///
  /// Parameters:
  ///
  /// * [String] postId (required):
  ///   ID of post that needs to be updated
  ///
  /// * [String] title:
  ///
  /// * [String] url:
  ///
  /// * [String] excerpt:
  ///
  /// * [String] content:
  ///
  /// * [String] commentStatus:
  ///
  /// * [String] postType:
  Future<void> updatePostWithForm(String postId, { String? title, String? url, String? excerpt, String? content, String? commentStatus, String? postType, }) async {
    final response = await updatePostWithFormWithHttpInfo(postId,  title: title, url: url, excerpt: excerpt, content: content, commentStatus: commentStatus, postType: postType, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
