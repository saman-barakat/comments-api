# coding: utf-8

from __future__ import absolute_import
import unittest

from flask import json
from six import BytesIO

from gcomments.models.post import Post  # noqa: E501
from gcomments.test import BaseTestCase


class TestPostController(BaseTestCase):
    """PostController integration test stubs"""

    @unittest.skip("Connexion does not support multiple consumes. See https://github.com/zalando/connexion/pull/760")
    def test_add_post(self):
        """Test case for add_post

        Add a new post
        """
        post = {
  "postType" : "postType",
  "id" : "id",
  "title" : "title",
  "excerpt" : "excerpt",
  "url" : "url",
  "content" : "content",
  "commentStatus" : "Disabled"
}
        headers = { 
            'Content-Type': 'application/json',
            'Authorization': 'Bearer special-key',
        }
        response = self.client.open(
            '/post',
            method='POST',
            headers=headers,
            data=json.dumps(post),
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_delete_post(self):
        """Test case for delete_post

        Deletes a post
        """
        headers = { 
            'api_key': 'api_key_example',
            'Authorization': 'Bearer special-key',
        }
        response = self.client.open(
            '/post/{post_id}'.format(post_id='post_id_example'),
            method='DELETE',
            headers=headers)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_post_by_id(self):
        """Test case for get_post_by_id

        Find post by ID
        """
        headers = { 
            'Accept': 'application/json',
            'api_key': 'special-key',
        }
        response = self.client.open(
            '/post/{post_id}'.format(post_id='post_id_example'),
            method='GET',
            headers=headers)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    @unittest.skip("Connexion does not support multiple consumes. See https://github.com/zalando/connexion/pull/760")
    def test_update_post(self):
        """Test case for update_post

        Update an existing post
        """
        post = {
  "postType" : "postType",
  "id" : "id",
  "title" : "title",
  "excerpt" : "excerpt",
  "url" : "url",
  "content" : "content",
  "commentStatus" : "Disabled"
}
        headers = { 
            'Content-Type': 'application/json',
            'Authorization': 'Bearer special-key',
        }
        response = self.client.open(
            '/post',
            method='PUT',
            headers=headers,
            data=json.dumps(post),
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    @unittest.skip("application/x-www-form-urlencoded not supported by Connexion")
    def test_update_post_with_form(self):
        """Test case for update_post_with_form

        Updates a post with form data
        """
        headers = { 
            'Content-Type': 'application/x-www-form-urlencoded',
            'Authorization': 'Bearer special-key',
        }
        data = dict(title='title_example',
                    url='url_example',
                    excerpt='excerpt_example',
                    content='content_example',
                    comment_status='comment_status_example',
                    post_type='post_type_example')
        response = self.client.open(
            '/post/{post_id}'.format(post_id='post_id_example'),
            method='POST',
            headers=headers,
            data=data,
            content_type='application/x-www-form-urlencoded')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))


if __name__ == '__main__':
    unittest.main()
