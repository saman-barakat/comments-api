/*
Open APi

This is a sample server. 

API version: 1.0.0
Contact: email@gmail.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package openapi

import (
	"bytes"
	"context"
	"io/ioutil"
	"net/http"
	"net/url"
	"strings"
)


// BlogApiService BlogApi service
type BlogApiService service

type ApiAddBlogRequest struct {
	ctx context.Context
	ApiService *BlogApiService
	blog *Blog
}

// Blog object that needs to be added
func (r ApiAddBlogRequest) Blog(blog Blog) ApiAddBlogRequest {
	r.blog = &blog
	return r
}

func (r ApiAddBlogRequest) Execute() (*http.Response, error) {
	return r.ApiService.AddBlogExecute(r)
}

/*
AddBlog Add a new blog

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @return ApiAddBlogRequest
*/
func (a *BlogApiService) AddBlog(ctx context.Context) ApiAddBlogRequest {
	return ApiAddBlogRequest{
		ApiService: a,
		ctx: ctx,
	}
}

// Execute executes the request
func (a *BlogApiService) AddBlogExecute(r ApiAddBlogRequest) (*http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodPost
		localVarPostBody     interface{}
		formFiles            []formFile
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "BlogApiService.AddBlog")
	if err != nil {
		return nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/blog"

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
	localVarPostBody = r.blog
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

type ApiDeleteBlogRequest struct {
	ctx context.Context
	ApiService *BlogApiService
	blogId string
	apiKey *string
}

func (r ApiDeleteBlogRequest) ApiKey(apiKey string) ApiDeleteBlogRequest {
	r.apiKey = &apiKey
	return r
}

func (r ApiDeleteBlogRequest) Execute() (*http.Response, error) {
	return r.ApiService.DeleteBlogExecute(r)
}

/*
DeleteBlog Deletes a blog

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param blogId Blog id to delete
 @return ApiDeleteBlogRequest
*/
func (a *BlogApiService) DeleteBlog(ctx context.Context, blogId string) ApiDeleteBlogRequest {
	return ApiDeleteBlogRequest{
		ApiService: a,
		ctx: ctx,
		blogId: blogId,
	}
}

// Execute executes the request
func (a *BlogApiService) DeleteBlogExecute(r ApiDeleteBlogRequest) (*http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodDelete
		localVarPostBody     interface{}
		formFiles            []formFile
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "BlogApiService.DeleteBlog")
	if err != nil {
		return nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/blog/{blogId}"
	localVarPath = strings.Replace(localVarPath, "{"+"blogId"+"}", url.PathEscape(parameterToString(r.blogId, "")), -1)

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

type ApiGetBlogByIdRequest struct {
	ctx context.Context
	ApiService *BlogApiService
	blogId string
}

func (r ApiGetBlogByIdRequest) Execute() (*Blog, *http.Response, error) {
	return r.ApiService.GetBlogByIdExecute(r)
}

/*
GetBlogById Find blog by ID

Returns a single blog

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param blogId ID of blog to return
 @return ApiGetBlogByIdRequest
*/
func (a *BlogApiService) GetBlogById(ctx context.Context, blogId string) ApiGetBlogByIdRequest {
	return ApiGetBlogByIdRequest{
		ApiService: a,
		ctx: ctx,
		blogId: blogId,
	}
}

// Execute executes the request
//  @return Blog
func (a *BlogApiService) GetBlogByIdExecute(r ApiGetBlogByIdRequest) (*Blog, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *Blog
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "BlogApiService.GetBlogById")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/blog/{blogId}"
	localVarPath = strings.Replace(localVarPath, "{"+"blogId"+"}", url.PathEscape(parameterToString(r.blogId, "")), -1)

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

type ApiUpdateBlogRequest struct {
	ctx context.Context
	ApiService *BlogApiService
	blog *Blog
}

// Blog object that needs to be added
func (r ApiUpdateBlogRequest) Blog(blog Blog) ApiUpdateBlogRequest {
	r.blog = &blog
	return r
}

func (r ApiUpdateBlogRequest) Execute() (*http.Response, error) {
	return r.ApiService.UpdateBlogExecute(r)
}

/*
UpdateBlog Update an existing blog

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @return ApiUpdateBlogRequest
*/
func (a *BlogApiService) UpdateBlog(ctx context.Context) ApiUpdateBlogRequest {
	return ApiUpdateBlogRequest{
		ApiService: a,
		ctx: ctx,
	}
}

// Execute executes the request
func (a *BlogApiService) UpdateBlogExecute(r ApiUpdateBlogRequest) (*http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodPut
		localVarPostBody     interface{}
		formFiles            []formFile
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "BlogApiService.UpdateBlog")
	if err != nil {
		return nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/blog"

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
	localVarPostBody = r.blog
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

type ApiUpdateBlogWithFormRequest struct {
	ctx context.Context
	ApiService *BlogApiService
	blogId string
	name *string
	url *string
	authToken *string
	commentStatus *string
}

func (r ApiUpdateBlogWithFormRequest) Name(name string) ApiUpdateBlogWithFormRequest {
	r.name = &name
	return r
}

func (r ApiUpdateBlogWithFormRequest) Url(url string) ApiUpdateBlogWithFormRequest {
	r.url = &url
	return r
}

func (r ApiUpdateBlogWithFormRequest) AuthToken(authToken string) ApiUpdateBlogWithFormRequest {
	r.authToken = &authToken
	return r
}

func (r ApiUpdateBlogWithFormRequest) CommentStatus(commentStatus string) ApiUpdateBlogWithFormRequest {
	r.commentStatus = &commentStatus
	return r
}

func (r ApiUpdateBlogWithFormRequest) Execute() (*http.Response, error) {
	return r.ApiService.UpdateBlogWithFormExecute(r)
}

/*
UpdateBlogWithForm Updates a blog with form data

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param blogId ID of blog that needs to be updated
 @return ApiUpdateBlogWithFormRequest
*/
func (a *BlogApiService) UpdateBlogWithForm(ctx context.Context, blogId string) ApiUpdateBlogWithFormRequest {
	return ApiUpdateBlogWithFormRequest{
		ApiService: a,
		ctx: ctx,
		blogId: blogId,
	}
}

// Execute executes the request
func (a *BlogApiService) UpdateBlogWithFormExecute(r ApiUpdateBlogWithFormRequest) (*http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodPost
		localVarPostBody     interface{}
		formFiles            []formFile
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "BlogApiService.UpdateBlogWithForm")
	if err != nil {
		return nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/blog/{blogId}"
	localVarPath = strings.Replace(localVarPath, "{"+"blogId"+"}", url.PathEscape(parameterToString(r.blogId, "")), -1)

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
	if r.name != nil {
		localVarFormParams.Add("name", parameterToString(*r.name, ""))
	}
	if r.url != nil {
		localVarFormParams.Add("url", parameterToString(*r.url, ""))
	}
	if r.authToken != nil {
		localVarFormParams.Add("authToken", parameterToString(*r.authToken, ""))
	}
	if r.commentStatus != nil {
		localVarFormParams.Add("commentStatus", parameterToString(*r.commentStatus, ""))
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