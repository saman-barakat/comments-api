# coding: utf-8

from __future__ import absolute_import
import unittest

from flask import json
from six import BytesIO

from gcomments.models.user import User  # noqa: E501
from gcomments.test import BaseTestCase


class TestUserController(BaseTestCase):
    """UserController integration test stubs"""

    def test_create_user(self):
        """Test case for create_user

        Create user
        """
        user = {
  "password" : "password",
  "role" : {
    "capabilities" : [ "capabilities", "capabilities" ],
    "name" : "name"
  },
  "avatarUrl" : "avatarUrl",
  "verificationStatus" : {
    "isVerified" : true,
    "verificationMethod" : "verificationMethod",
    "verificationTimestamp" : "2000-01-23T04:56:07.000+00:00"
  },
  "displayName" : "displayName",
  "blogs" : [ {
    "authToken" : "authToken",
    "name" : "name",
    "id" : "id",
    "url" : "url",
    "commentStatus" : "Disabled"
  }, {
    "authToken" : "authToken",
    "name" : "name",
    "id" : "id",
    "url" : "url",
    "commentStatus" : "Disabled"
  } ],
  "id" : "id",
  "niceName" : "niceName",
  "email" : "email",
  "username" : "username"
}
        headers = { 
            'Content-Type': 'application/json',
        }
        response = self.client.open(
            '/user',
            method='POST',
            headers=headers,
            data=json.dumps(user),
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_delete_user(self):
        """Test case for delete_user

        Delete user
        """
        headers = { 
        }
        response = self.client.open(
            '/user/{username}'.format(username='username_example'),
            method='DELETE',
            headers=headers)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_user_by_name(self):
        """Test case for get_user_by_name

        Get user by user name
        """
        headers = { 
            'Accept': 'application/json',
        }
        response = self.client.open(
            '/user/{username}'.format(username='username_example'),
            method='GET',
            headers=headers)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_login_user(self):
        """Test case for login_user

        Logs user into the system
        """
        query_string = [('username', 'username_example'),
                        ('password', 'password_example')]
        headers = { 
            'Accept': 'application/json',
        }
        response = self.client.open(
            '/user/login',
            method='GET',
            headers=headers,
            query_string=query_string)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_logout_user(self):
        """Test case for logout_user

        Logs out current logged in user session
        """
        headers = { 
        }
        response = self.client.open(
            '/user/logout',
            method='GET',
            headers=headers)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_update_user(self):
        """Test case for update_user

        Updated user
        """
        user = {
  "password" : "password",
  "role" : {
    "capabilities" : [ "capabilities", "capabilities" ],
    "name" : "name"
  },
  "avatarUrl" : "avatarUrl",
  "verificationStatus" : {
    "isVerified" : true,
    "verificationMethod" : "verificationMethod",
    "verificationTimestamp" : "2000-01-23T04:56:07.000+00:00"
  },
  "displayName" : "displayName",
  "blogs" : [ {
    "authToken" : "authToken",
    "name" : "name",
    "id" : "id",
    "url" : "url",
    "commentStatus" : "Disabled"
  }, {
    "authToken" : "authToken",
    "name" : "name",
    "id" : "id",
    "url" : "url",
    "commentStatus" : "Disabled"
  } ],
  "id" : "id",
  "niceName" : "niceName",
  "email" : "email",
  "username" : "username"
}
        headers = { 
            'Content-Type': 'application/json',
        }
        response = self.client.open(
            '/user/{username}'.format(username='username_example'),
            method='PUT',
            headers=headers,
            data=json.dumps(user),
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))


if __name__ == '__main__':
    unittest.main()
