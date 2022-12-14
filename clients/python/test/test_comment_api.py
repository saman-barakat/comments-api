"""
    Open APi

    This is a sample server.   # noqa: E501

    The version of the OpenAPI document: 1.0.0
    Contact: email@gmail.com
    Generated by: https://openapi-generator.tech
"""


import unittest

import openapi_client
from openapi_client.api.comment_api import CommentApi  # noqa: E501


class TestCommentApi(unittest.TestCase):
    """CommentApi unit test stubs"""

    def setUp(self):
        self.api = CommentApi()  # noqa: E501

    def tearDown(self):
        pass

    def test_add_comment(self):
        """Test case for add_comment

        Add a new comment  # noqa: E501
        """
        pass

    def test_delete_comment(self):
        """Test case for delete_comment

        Deletes a comment  # noqa: E501
        """
        pass

    def test_get_comment_by_id(self):
        """Test case for get_comment_by_id

        Find comment by ID  # noqa: E501
        """
        pass

    def test_update_comment(self):
        """Test case for update_comment

        Update an existing comment  # noqa: E501
        """
        pass

    def test_update_comment_with_form(self):
        """Test case for update_comment_with_form

        Updates a comment with form data  # noqa: E501
        """
        pass


if __name__ == '__main__':
    unittest.main()
