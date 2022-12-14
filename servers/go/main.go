/*
 * GComments
 *
 * APIs for creating and managing comments 
 *
 * API version: 1.0.0
 * Contact: support@comments.app
 * Generated by: OpenAPI Generator (https://openapi-generator.tech)
 */

package main

import (
	"log"
	"net/http"

	gcomments "github.com/GIT_USER_ID/GIT_REPO_ID/go"
)

func main() {
	log.Printf("Server started")

	BlogApiService := gcomments.NewBlogApiService()
	BlogApiController := gcomments.NewBlogApiController(BlogApiService)

	CommentApiService := gcomments.NewCommentApiService()
	CommentApiController := gcomments.NewCommentApiController(CommentApiService)

	PostApiService := gcomments.NewPostApiService()
	PostApiController := gcomments.NewPostApiController(PostApiService)

	UserApiService := gcomments.NewUserApiService()
	UserApiController := gcomments.NewUserApiController(UserApiService)

	router := gcomments.NewRouter(BlogApiController, CommentApiController, PostApiController, UserApiController)

	log.Fatal(http.ListenAndServe(":8080", router))
}
