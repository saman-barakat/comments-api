/*
Open APi

This is a sample server. 

API version: 1.0.0
Contact: email@gmail.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package comments

import (
	"bytes"
	"context"
	"io/ioutil"
	"net/http"
	"net/url"
	"strings"
)


// PostApiService PostApi service
type PostApiService service

type ApiAddPostRequest struct {
	ctx context.Context
	ApiService *PostApiService
	post *Post
}

// Post object that needs to be added
func (r ApiAddPostRequest) Post(post Post) ApiAddPostRequest {
	r.post = &post
	return r
}

func (r ApiAddPostRequest) Execute() (*http.Response, error) {
	return r.ApiService.AddPostExecute(r)
}

/*
AddPost Add a new post

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @return ApiAddPostRequest
*/
func (a *PostApiService) AddPost(ctx context.Context) ApiAddPostRequest {
	return ApiAddPostRequest{
		ApiService: a,
		ctx: ctx,
	}
}

// Execute executes the request
func (a *PostApiService) AddPostExecute(r ApiAddPostRequest) (*http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodPost
		localVarPostBody     interface{}
		formFiles            []formFile
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "PostApiService.AddPost")
	if err != nil {
		return nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/post"

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}

	// to determine the Content-Type header
	localVarHTTPContentTypes := []string{"application/json", "application/xml"}

	// set Content-Type header
	localVarHTTPContentType := selectHeaderContentType(localVarHTTPContentTypes)
	if localVarHTTPContentType != "" {
		localVarHeaderParams["Content-Type"] = localVarHTTPContentType
	}

	// to determine the Accept header
	localVarHTTPHeaderAccepts := []string{}

	// set Accept header
	localVarHTTPHeaderAccept := selectHeaderAccept(localVarHTTPHeaderAccepts)
	if localVarHTTPHeaderAccept != "" {
		localVarHeaderParams["Accept"] = localVarHTTPHeaderAccept
	}
	// body params
	localVarPostBody = r.post
	req, err := a.client.prepareRequest(r.ctx, localVarPath, localVarHTTPMethod, localVarPostBody, localVarHeaderParams, localVarQueryParams, localVarFormParams, formFiles)
	if err != nil {
		return nil, err
	}

	localVarHTTPResponse, err := a.client.callAPI(req)
	if err != nil || localVarHTTPResponse == nil {
		return localVarHTTPResponse, err
	}

	localVarBody, err := ioutil.ReadAll(localVarHTTPResponse.Body)
	localVarHTTPResponse.Body.Close()
	localVarHTTPResponse.Body = ioutil.NopCloser(bytes.NewBuffer(localVarBody))
	if err != nil {
		return localVarHTTPResponse, err
	}

	if localVarHTTPResponse.StatusCode >= 300 {
		newErr := &GenericOpenAPIError{
			body:  localVarBody,
			error: localVarHTTPResponse.Status,
		}
		return localVarHTTPResponse, newErr
	}

	return localVarHTTPResponse, nil
}

type ApiDeletePostRequest struct {
	ctx context.Context
	ApiService *PostApiService
	postId string
	apiKey *string
}

func (r ApiDeletePostRequest) ApiKey(apiKey string) ApiDeletePostRequest {
	r.apiKey = &apiKey
	return r
}

func (r ApiDeletePostRequest) Execute() (*http.Response, error) {
	return r.ApiService.DeletePostExecute(r)
}

/*
DeletePost Deletes a post

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param postId Post id to delete
 @return ApiDeletePostRequest
*/
func (a *PostApiService) DeletePost(ctx context.Context, postId string) ApiDeletePostRequest {
	return ApiDeletePostRequest{
		ApiService: a,
		ctx: ctx,
		postId: postId,
	}
}

// Execute executes the request
func (a *PostApiService) DeletePostExecute(r ApiDeletePostRequest) (*http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodDelete
		localVarPostBody     interface{}
		formFiles            []formFile
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "PostApiService.DeletePost")
	if err != nil {
		return nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/post/{postId}"
	localVarPath = strings.Replace(localVarPath, "{"+"postId"+"}", url.PathEscape(parameterToString(r.postId, "")), -1)

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}

	// to determine the Content-Type header
	localVarHTTPContentTypes := []string{}

	// set Content-Type header
	localVarHTTPContentType := selectHeaderContentType(localVarHTTPContentTypes)
	if localVarHTTPContentType != "" {
		localVarHeaderParams["Content-Type"] = localVarHTTPContentType
	}

	// to determine the Accept header
	localVarHTTPHeaderAccepts := []string{}

	// set Accept header
	localVarHTTPHeaderAccept := selectHeaderAccept(localVarHTTPHeaderAccepts)
	if localVarHTTPHeaderAccept != "" {
		localVarHeaderParams["Accept"] = localVarHTTPHeaderAccept
	}
	if r.apiKey != nil {
		localVarHeaderParams["api_key"] = parameterToString(*r.apiKey, "")
	}
	req, err := a.client.prepareRequest(r.ctx, localVarPath, localVarHTTPMethod, localVarPostBody, localVarHeaderParams, localVarQueryParams, localVarFormParams, formFiles)
	if err != nil {
		return nil, err
	}

	localVarHTTPResponse, err := a.client.callAPI(req)
	if err != nil || localVarHTTPResponse == nil {
		return localVarHTTPResponse, err
	}

	localVarBody, err := ioutil.ReadAll(localVarHTTPResponse.Body)
	localVarHTTPResponse.Body.Close()
	localVarHTTPResponse.Body = ioutil.NopCloser(bytes.NewBuffer(localVarBody))
	if err != nil {
		return localVarHTTPResponse, err
	}

	if localVarHTTPResponse.StatusCode >= 300 {
		newErr := &GenericOpenAPIError{
			body:  localVarBody,
			error: localVarHTTPResponse.Status,
		}
		return localVarHTTPResponse, newErr
	}

	return localVarHTTPResponse, nil
}

type ApiGetPostByIdRequest struct {
	ctx context.Context
	ApiService *PostApiService
	postId string
}

func (r ApiGetPostByIdRequest) Execute() (*Post, *http.Response, error) {
	return r.ApiService.GetPostByIdExecute(r)
}

/*
GetPostById Find post by ID

Returns a single post

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param postId ID of post to return
 @return ApiGetPostByIdRequest
*/
func (a *PostApiService) GetPostById(ctx context.Context, postId string) ApiGetPostByIdRequest {
	return ApiGetPostByIdRequest{
		ApiService: a,
		ctx: ctx,
		postId: postId,
	}
}

// Execute executes the request
//  @return Post
func (a *PostApiService) GetPostByIdExecute(r ApiGetPostByIdRequest) (*Post, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *Post
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "PostApiService.GetPostById")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/post/{postId}"
	localVarPath = strings.Replace(localVarPath, "{"+"postId"+"}", url.PathEscape(parameterToString(r.postId, "")), -1)

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}

	// to determine the Content-Type header
	localVarHTTPContentTypes := []string{}

	// set Content-Type header
	localVarHTTPContentType := selectHeaderContentType(localVarHTTPContentTypes)
	if localVarHTTPContentType != "" {
		localVarHeaderParams["Content-Type"] = localVarHTTPContentType
	}

	// to determine the Accept header
	localVarHTTPHeaderAccepts := []string{"application/json", "application/xml"}

	// set Accept header
	localVarHTTPHeaderAccept := selectHeaderAccept(localVarHTTPHeaderAccepts)
	if localVarHTTPHeaderAccept != "" {
		localVarHeaderParams["Accept"] = localVarHTTPHeaderAccept
	}
	if r.ctx != nil {
		// API Key Authentication
		if auth, ok := r.ctx.Value(ContextAPIKeys).(map[string]APIKey); ok {
			if apiKey, ok := auth["api_key"]; ok {
				var key string
				if apiKey.Prefix != "" {
					key = apiKey.Prefix + " " + apiKey.Key
				} else {
					key = apiKey.Key
				}
				localVarHeaderParams["api_key"] = key
			}
		}
	}
	req, err := a.client.prepareRequest(r.ctx, localVarPath, localVarHTTPMethod, localVarPostBody, localVarHeaderParams, localVarQueryParams, localVarFormParams, formFiles)
	if err != nil {
		return localVarReturnValue, nil, err
	}

	localVarHTTPResponse, err := a.client.callAPI(req)
	if err != nil || localVarHTTPResponse == nil {
		return localVarReturnValue, localVarHTTPResponse, err
	}

	localVarBody, err := ioutil.ReadAll(localVarHTTPResponse.Body)
	localVarHTTPResponse.Body.Close()
	localVarHTTPResponse.Body = ioutil.NopCloser(bytes.NewBuffer(localVarBody))
	if err != nil {
		return localVarReturnValue, localVarHTTPResponse, err
	}

	if localVarHTTPResponse.StatusCode >= 300 {
		newErr := &GenericOpenAPIError{
			body:  localVarBody,
			error: localVarHTTPResponse.Status,
		}
		return localVarReturnValue, localVarHTTPResponse, newErr
	}

	err = a.client.decode(&localVarReturnValue, localVarBody, localVarHTTPResponse.Header.Get("Content-Type"))
	if err != nil {
		newErr := &GenericOpenAPIError{
			body:  localVarBody,
			error: err.Error(),
		}
		return localVarReturnValue, localVarHTTPResponse, newErr
	}

	return localVarReturnValue, localVarHTTPResponse, nil
}

type ApiUpdatePostRequest struct {
	ctx context.Context
	ApiService *PostApiService
	post *Post
}

// Post object that needs to be added
func (r ApiUpdatePostRequest) Post(post Post) ApiUpdatePostRequest {
	r.post = &post
	return r
}

func (r ApiUpdatePostRequest) Execute() (*http.Response, error) {
	return r.ApiService.UpdatePostExecute(r)
}

/*
UpdatePost Update an existing post

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @return ApiUpdatePostRequest
*/
func (a *PostApiService) UpdatePost(ctx context.Context) ApiUpdatePostRequest {
	return ApiUpdatePostRequest{
		ApiService: a,
		ctx: ctx,
	}
}

// Execute executes the request
func (a *PostApiService) UpdatePostExecute(r ApiUpdatePostRequest) (*http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodPut
		localVarPostBody     interface{}
		formFiles            []formFile
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "PostApiService.UpdatePost")
	if err != nil {
		return nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/post"

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}

	// to determine the Content-Type header
	localVarHTTPContentTypes := []string{"application/json", "application/xml"}

	// set Content-Type header
	localVarHTTPContentType := selectHeaderContentType(localVarHTTPContentTypes)
	if localVarHTTPContentType != "" {
		localVarHeaderParams["Content-Type"] = localVarHTTPContentType
	}

	// to determine the Accept header
	localVarHTTPHeaderAccepts := []string{}

	// set Accept header
	localVarHTTPHeaderAccept := selectHeaderAccept(localVarHTTPHeaderAccepts)
	if localVarHTTPHeaderAccept != "" {
		localVarHeaderParams["Accept"] = localVarHTTPHeaderAccept
	}
	// body params
	localVarPostBody = r.post
	req, err := a.client.prepareRequest(r.ctx, localVarPath, localVarHTTPMethod, localVarPostBody, localVarHeaderParams, localVarQueryParams, localVarFormParams, formFiles)
	if err != nil {
		return nil, err
	}

	localVarHTTPResponse, err := a.client.callAPI(req)
	if err != nil || localVarHTTPResponse == nil {
		return localVarHTTPResponse, err
	}

	localVarBody, err := ioutil.ReadAll(localVarHTTPResponse.Body)
	localVarHTTPResponse.Body.Close()
	localVarHTTPResponse.Body = ioutil.NopCloser(bytes.NewBuffer(localVarBody))
	if err != nil {
		return localVarHTTPResponse, err
	}

	if localVarHTTPResponse.StatusCode >= 300 {
		newErr := &GenericOpenAPIError{
			body:  localVarBody,
			error: localVarHTTPResponse.Status,
		}
		return localVarHTTPResponse, newErr
	}

	return localVarHTTPResponse, nil
}

type ApiUpdatePostWithFormRequest struct {
	ctx context.Context
	ApiService *PostApiService
	postId string
	title *string
	url *string
	excerpt *string
	content *string
	commentStatus *string
	postType *string
}

func (r ApiUpdatePostWithFormRequest) Title(title string) ApiUpdatePostWithFormRequest {
	r.title = &title
	return r
}

func (r ApiUpdatePostWithFormRequest) Url(url string) ApiUpdatePostWithFormRequest {
	r.url = &url
	return r
}

func (r ApiUpdatePostWithFormRequest) Excerpt(excerpt string) ApiUpdatePostWithFormRequest {
	r.excerpt = &excerpt
	return r
}

func (r ApiUpdatePostWithFormRequest) Content(content string) ApiUpdatePostWithFormRequest {
	r.content = &content
	return r
}

func (r ApiUpdatePostWithFormRequest) CommentStatus(commentStatus string) ApiUpdatePostWithFormRequest {
	r.commentStatus = &commentStatus
	return r
}

func (r ApiUpdatePostWithFormRequest) PostType(postType string) ApiUpdatePostWithFormRequest {
	r.postType = &postType
	return r
}

func (r ApiUpdatePostWithFormRequest) Execute() (*http.Response, error) {
	return r.ApiService.UpdatePostWithFormExecute(r)
}

/*
UpdatePostWithForm Updates a post with form data

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param postId ID of post that needs to be updated
 @return ApiUpdatePostWithFormRequest
*/
func (a *PostApiService) UpdatePostWithForm(ctx context.Context, postId string) ApiUpdatePostWithFormRequest {
	return ApiUpdatePostWithFormRequest{
		ApiService: a,
		ctx: ctx,
		postId: postId,
	}
}

// Execute executes the request
func (a *PostApiService) UpdatePostWithFormExecute(r ApiUpdatePostWithFormRequest) (*http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodPost
		localVarPostBody     interface{}
		formFiles            []formFile
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "PostApiService.UpdatePostWithForm")
	if err != nil {
		return nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/post/{postId}"
	localVarPath = strings.Replace(localVarPath, "{"+"postId"+"}", url.PathEscape(parameterToString(r.postId, "")), -1)

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}

	// to determine the Content-Type header
	localVarHTTPContentTypes := []string{"application/x-www-form-urlencoded"}

	// set Content-Type header
	localVarHTTPContentType := selectHeaderContentType(localVarHTTPContentTypes)
	if localVarHTTPContentType != "" {
		localVarHeaderParams["Content-Type"] = localVarHTTPContentType
	}

	// to determine the Accept header
	localVarHTTPHeaderAccepts := []string{}

	// set Accept header
	localVarHTTPHeaderAccept := selectHeaderAccept(localVarHTTPHeaderAccepts)
	if localVarHTTPHeaderAccept != "" {
		localVarHeaderParams["Accept"] = localVarHTTPHeaderAccept
	}
	if r.title != nil {
		localVarFormParams.Add("title", parameterToString(*r.title, ""))
	}
	if r.url != nil {
		localVarFormParams.Add("url", parameterToString(*r.url, ""))
	}
	if r.excerpt != nil {
		localVarFormParams.Add("excerpt", parameterToString(*r.excerpt, ""))
	}
	if r.content != nil {
		localVarFormParams.Add("content", parameterToString(*r.content, ""))
	}
	if r.commentStatus != nil {
		localVarFormParams.Add("commentStatus", parameterToString(*r.commentStatus, ""))
	}
	if r.postType != nil {
		localVarFormParams.Add("postType", parameterToString(*r.postType, ""))
	}
	req, err := a.client.prepareRequest(r.ctx, localVarPath, localVarHTTPMethod, localVarPostBody, localVarHeaderParams, localVarQueryParams, localVarFormParams, formFiles)
	if err != nil {
		return nil, err
	}

	localVarHTTPResponse, err := a.client.callAPI(req)
	if err != nil || localVarHTTPResponse == nil {
		return localVarHTTPResponse, err
	}

	localVarBody, err := ioutil.ReadAll(localVarHTTPResponse.Body)
	localVarHTTPResponse.Body.Close()
	localVarHTTPResponse.Body = ioutil.NopCloser(bytes.NewBuffer(localVarBody))
	if err != nil {
		return localVarHTTPResponse, err
	}

	if localVarHTTPResponse.StatusCode >= 300 {
		newErr := &GenericOpenAPIError{
			body:  localVarBody,
			error: localVarHTTPResponse.Status,
		}
		return localVarHTTPResponse, newErr
	}

	return localVarHTTPResponse, nil
}
