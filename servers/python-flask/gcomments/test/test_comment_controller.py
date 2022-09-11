# coding: utf-8

from __future__ import absolute_import
import unittest

from flask import json
from six import BytesIO

from gcomments.models.comment import Comment  # noqa: E501
from gcomments.models.media import Media  # noqa: E501
from gcomments.test import BaseTestCase


class TestCommentController(BaseTestCase):
    """CommentController integration test stubs"""

    @unittest.skip("Connexion does not support multiple consumes. See https://github.com/zalando/connexion/pull/760")
    def test_add_comment(self):
        """Test case for add_comment

        Add a new comment
        """
        comment = {
  "id" : "sWT2a92sQX12qH",
  "userId" : "johnSmith@",
  "authorDisplayName" : "John Smith",
  "postId" : "how to make a fish climb a mountain",
  "blogId" : "climbing-fishes.com",
  "content" : "Is that really a fish going up that hill??",
  "upvoteCount" : 1683,
  "downvoteCount" : 56,
  "status" : "Published",
  "created_timestamp" : "2000-01-23T04:56:07.000+00:00",
  "modified_timestamp" : "2000-01-23T04:56:07.000+00:00",
  "media" : {
    "name" : "climbing-fish.png",
    "id" : "climbing-fish.png",
    "type" : "PNG/Image",
    "content" : "byte-content"
  }
}
        headers = { 
            'Content-Type': 'application/json',
            'Authorization': 'Bearer special-key',
        }
        response = self.client.open(
            '/comment',
            method='POST',
            headers=headers,
            data=json.dumps(comment),
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_delete_comment(self):
        """Test case for delete_comment

        Deletes a comment
        """
        headers = { 
            'api_key': 'api_key_example',
            'Authorization': 'Bearer special-key',
        }
        response = self.client.open(
            '/comment/{comment_id}'.format(comment_id='comment_id_example'),
            method='DELETE',
            headers=headers)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_comment_by_id(self):
        """Test case for get_comment_by_id

        Find comment by ID
        """
        headers = { 
            'Accept': 'application/json',
            'api_key': 'special-key',
        }
        response = self.client.open(
            '/comment/{comment_id}'.format(comment_id='comment_id_example'),
            method='GET',
            headers=headers)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    @unittest.skip("Connexion does not support multiple consumes. See https://github.com/zalando/connexion/pull/760")
    def test_update_comment(self):
        """Test case for update_comment

        Update an existing comment
        """
        comment = {
  "id" : "sWT2a92sQX12qH",
  "userId" : "johnSmith@",
  "authorDisplayName" : "John Smith",
  "postId" : "how to make a fish climb a mountain",
  "blogId" : "climbing-fishes.com",
  "content" : "Is that really a fish going up that hill??",
  "upvoteCount" : 1683,
  "downvoteCount" : 56,
  "status" : "Published",
  "created_timestamp" : "2000-01-23T04:56:07.000+00:00",
  "modified_timestamp" : "2000-01-23T04:56:07.000+00:00",
  "media" : {
    "name" : "climbing-fish.png",
    "id" : "climbing-fish.png",
    "type" : "PNG/Image",
    "content" : "byte-content"
  }
}
        headers = { 
            'Content-Type': 'application/json',
            'Authorization': 'Bearer special-key',
        }
        response = self.client.open(
            '/comment',
            method='PUT',
            headers=headers,
            data=json.dumps(comment),
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    @unittest.skip("application/x-www-form-urlencoded not supported by Connexion")
    def test_update_comment_with_form(self):
        """Test case for update_comment_with_form

        Updates a comment with form data
        """
        headers = { 
            'Content-Type': 'application/x-www-form-urlencoded',
            'Authorization': 'Bearer special-key',
        }
        data = dict(user_id='user_id_example',
                    post_id='post_id_example',
                    blog_id='blog_id_example',
                    parent_id='parent_id_example',
                    author_display_name='author_display_name_example',
                    created_timestamp='2013-10-20T19:20:30+01:00',
                    modified_timestamp='2013-10-20T19:20:30+01:00',
                    content='content_example',
                    status='status_example',
                    downvote_count=56,
                    upvote_count=56,
                    media=gcomments.Media())
        response = self.client.open(
            '/comment/{comment_id}'.format(comment_id='comment_id_example'),
            method='POST',
            headers=headers,
            data=data,
            content_type='application/x-www-form-urlencoded')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))


if __name__ == '__main__':
    unittest.main()
