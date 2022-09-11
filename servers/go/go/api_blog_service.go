/*
 * Open APi
 *
 * This is a sample server. 
 *
 * API version: 1.0.0
 * Contact: email@gmail.com
 * Generated by: OpenAPI Generator (https://openapi-generator.tech)
 */

package comments

import (
	"context"
	"net/http"
	"errors"
)

// BlogApiService is a service that implements the logic for the BlogApiServicer
// This service should implement the business logic for every endpoint for the BlogApi API.
// Include any external packages or services that will be required by this service.
type BlogApiService struct {
}

// NewBlogApiService creates a default api service
func NewBlogApiService() BlogApiServicer {
	return &BlogApiService{}
}

// AddBlog - Add a new blog
func (s *BlogApiService) AddBlog(ctx context.Context, blog Blog) (ImplResponse, error) {
	// TODO - update AddBlog with the required logic for this service method.
	// Add api_blog_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	//TODO: Uncomment the next line to return response Response(200, {}) or use other options such as http.Ok ...
	//return Response(200, nil),nil

	//TODO: Uncomment the next line to return response Response(405, {}) or use other options such as http.Ok ...
	//return Response(405, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("AddBlog method not implemented")
}

// DeleteBlog - Deletes a blog
func (s *BlogApiService) DeleteBlog(ctx context.Context, blogId string, apiKey string) (ImplResponse, error) {
	// TODO - update DeleteBlog with the required logic for this service method.
	// Add api_blog_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	//TODO: Uncomment the next line to return response Response(200, {}) or use other options such as http.Ok ...
	//return Response(200, nil),nil

	//TODO: Uncomment the next line to return response Response(400, {}) or use other options such as http.Ok ...
	//return Response(400, nil),nil

	//TODO: Uncomment the next line to return response Response(404, {}) or use other options such as http.Ok ...
	//return Response(404, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("DeleteBlog method not implemented")
}

// GetBlogById - Find blog by ID
func (s *BlogApiService) GetBlogById(ctx context.Context, blogId string) (ImplResponse, error) {
	// TODO - update GetBlogById with the required logic for this service method.
	// Add api_blog_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	//TODO: Uncomment the next line to return response Response(200, Blog{}) or use other options such as http.Ok ...
	//return Response(200, Blog{}), nil

	//TODO: Uncomment the next line to return response Response(400, {}) or use other options such as http.Ok ...
	//return Response(400, nil),nil

	//TODO: Uncomment the next line to return response Response(404, {}) or use other options such as http.Ok ...
	//return Response(404, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("GetBlogById method not implemented")
}

// UpdateBlog - Update an existing blog
func (s *BlogApiService) UpdateBlog(ctx context.Context, blog Blog) (ImplResponse, error) {
	// TODO - update UpdateBlog with the required logic for this service method.
	// Add api_blog_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	//TODO: Uncomment the next line to return response Response(200, {}) or use other options such as http.Ok ...
	//return Response(200, nil),nil

	//TODO: Uncomment the next line to return response Response(400, {}) or use other options such as http.Ok ...
	//return Response(400, nil),nil

	//TODO: Uncomment the next line to return response Response(404, {}) or use other options such as http.Ok ...
	//return Response(404, nil),nil

	//TODO: Uncomment the next line to return response Response(405, {}) or use other options such as http.Ok ...
	//return Response(405, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("UpdateBlog method not implemented")
}

// UpdateBlogWithForm - Updates a blog with form data
func (s *BlogApiService) UpdateBlogWithForm(ctx context.Context, blogId string, name string, url string, authToken string, commentStatus string) (ImplResponse, error) {
	// TODO - update UpdateBlogWithForm with the required logic for this service method.
	// Add api_blog_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	//TODO: Uncomment the next line to return response Response(200, {}) or use other options such as http.Ok ...
	//return Response(200, nil),nil

	//TODO: Uncomment the next line to return response Response(405, {}) or use other options such as http.Ok ...
	//return Response(405, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("UpdateBlogWithForm method not implemented")
}
