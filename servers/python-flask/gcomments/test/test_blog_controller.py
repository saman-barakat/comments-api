# coding: utf-8

from __future__ import absolute_import
import unittest

from flask import json
from six import BytesIO

from gcomments.models.blog import Blog  # noqa: E501
from gcomments.test import BaseTestCase


class TestBlogController(BaseTestCase):
    """BlogController integration test stubs"""

    @unittest.skip("Connexion does not support multiple consumes. See https://github.com/zalando/connexion/pull/760")
    def test_add_blog(self):
        """Test case for add_blog

        Add a new blog
        """
        blog = {
  "authToken" : "authToken",
  "name" : "name",
  "id" : "id",
  "url" : "url",
  "commentStatus" : "Disabled"
}
        headers = { 
            'Content-Type': 'application/json',
            'Authorization': 'Bearer special-key',
        }
        response = self.client.open(
            '/blog',
            method='POST',
            headers=headers,
            data=json.dumps(blog),
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_delete_blog(self):
        """Test case for delete_blog

        Deletes a blog
        """
        headers = { 
            'api_key': 'api_key_example',
            'Authorization': 'Bearer special-key',
        }
        response = self.client.open(
            '/blog/{blog_id}'.format(blog_id='blog_id_example'),
            method='DELETE',
            headers=headers)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_blog_by_id(self):
        """Test case for get_blog_by_id

        Find blog by ID
        """
        headers = { 
            'Accept': 'application/json',
            'api_key': 'special-key',
        }
        response = self.client.open(
            '/blog/{blog_id}'.format(blog_id='blog_id_example'),
            method='GET',
            headers=headers)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    @unittest.skip("Connexion does not support multiple consumes. See https://github.com/zalando/connexion/pull/760")
    def test_update_blog(self):
        """Test case for update_blog

        Update an existing blog
        """
        blog = {
  "authToken" : "authToken",
  "name" : "name",
  "id" : "id",
  "url" : "url",
  "commentStatus" : "Disabled"
}
        headers = { 
            'Content-Type': 'application/json',
            'Authorization': 'Bearer special-key',
        }
        response = self.client.open(
            '/blog',
            method='PUT',
            headers=headers,
            data=json.dumps(blog),
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    @unittest.skip("application/x-www-form-urlencoded not supported by Connexion")
    def test_update_blog_with_form(self):
        """Test case for update_blog_with_form

        Updates a blog with form data
        """
        headers = { 
            'Content-Type': 'application/x-www-form-urlencoded',
            'Authorization': 'Bearer special-key',
        }
        data = dict(name='name_example',
                    url='url_example',
                    auth_token='auth_token_example',
                    comment_status='comment_status_example')
        response = self.client.open(
            '/blog/{blog_id}'.format(blog_id='blog_id_example'),
            method='POST',
            headers=headers,
            data=data,
            content_type='application/x-www-form-urlencoded')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))


if __name__ == '__main__':
    unittest.main()
