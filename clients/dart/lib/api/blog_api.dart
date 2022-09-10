//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class BlogApi {
  BlogApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Add a new blog
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Blog] blog:
  ///   Blog object that needs to be added
  Future<Response> addBlogWithHttpInfo({ Blog? blog, }) async {
    // ignore: prefer_const_declarations
    final path = r'/blog';

    // ignore: prefer_final_locals
    Object? postBody = blog;

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

  /// Add a new blog
  ///
  /// Parameters:
  ///
  /// * [Blog] blog:
  ///   Blog object that needs to be added
  Future<void> addBlog({ Blog? blog, }) async {
    final response = await addBlogWithHttpInfo( blog: blog, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Deletes a blog
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] blogId (required):
  ///   Blog id to delete
  ///
  /// * [String] apiKey:
  Future<Response> deleteBlogWithHttpInfo(String blogId, { String? apiKey, }) async {
    // ignore: prefer_const_declarations
    final path = r'/blog/{blogId}'
      .replaceAll('{blogId}', blogId);

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

  /// Deletes a blog
  ///
  /// Parameters:
  ///
  /// * [String] blogId (required):
  ///   Blog id to delete
  ///
  /// * [String] apiKey:
  Future<void> deleteBlog(String blogId, { String? apiKey, }) async {
    final response = await deleteBlogWithHttpInfo(blogId,  apiKey: apiKey, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Find blog by ID
  ///
  /// Returns a single blog
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] blogId (required):
  ///   ID of blog to return
  Future<Response> getBlogByIdWithHttpInfo(String blogId,) async {
    // ignore: prefer_const_declarations
    final path = r'/blog/{blogId}'
      .replaceAll('{blogId}', blogId);

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

  /// Find blog by ID
  ///
  /// Returns a single blog
  ///
  /// Parameters:
  ///
  /// * [String] blogId (required):
  ///   ID of blog to return
  Future<Blog?> getBlogById(String blogId,) async {
    final response = await getBlogByIdWithHttpInfo(blogId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Blog',) as Blog;
    
    }
    return null;
  }

  /// Update an existing blog
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Blog] blog:
  ///   Blog object that needs to be added
  Future<Response> updateBlogWithHttpInfo({ Blog? blog, }) async {
    // ignore: prefer_const_declarations
    final path = r'/blog';

    // ignore: prefer_final_locals
    Object? postBody = blog;

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

  /// Update an existing blog
  ///
  /// Parameters:
  ///
  /// * [Blog] blog:
  ///   Blog object that needs to be added
  Future<void> updateBlog({ Blog? blog, }) async {
    final response = await updateBlogWithHttpInfo( blog: blog, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Updates a blog with form data
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] blogId (required):
  ///   ID of blog that needs to be updated
  ///
  /// * [String] name:
  ///
  /// * [String] url:
  ///
  /// * [String] authToken:
  ///
  /// * [String] commentStatus:
  Future<Response> updateBlogWithFormWithHttpInfo(String blogId, { String? name, String? url, String? authToken, String? commentStatus, }) async {
    // ignore: prefer_const_declarations
    final path = r'/blog/{blogId}'
      .replaceAll('{blogId}', blogId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/x-www-form-urlencoded'];

    if (name != null) {
      formParams[r'name'] = parameterToString(name);
    }
    if (url != null) {
      formParams[r'url'] = parameterToString(url);
    }
    if (authToken != null) {
      formParams[r'authToken'] = parameterToString(authToken);
    }
    if (commentStatus != null) {
      formParams[r'commentStatus'] = parameterToString(commentStatus);
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

  /// Updates a blog with form data
  ///
  /// Parameters:
  ///
  /// * [String] blogId (required):
  ///   ID of blog that needs to be updated
  ///
  /// * [String] name:
  ///
  /// * [String] url:
  ///
  /// * [String] authToken:
  ///
  /// * [String] commentStatus:
  Future<void> updateBlogWithForm(String blogId, { String? name, String? url, String? authToken, String? commentStatus, }) async {
    final response = await updateBlogWithFormWithHttpInfo(blogId,  name: name, url: url, authToken: authToken, commentStatus: commentStatus, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
