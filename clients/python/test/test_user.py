"""
    Open APi

    This is a sample server.   # noqa: E501

    The version of the OpenAPI document: 1.0.0
    Contact: email@gmail.com
    Generated by: https://openapi-generator.tech
"""


import sys
import unittest

import openapi_client
from openapi_client.model.blog import Blog
from openapi_client.model.role import Role
from openapi_client.model.verification_status import VerificationStatus
globals()['Blog'] = Blog
globals()['Role'] = Role
globals()['VerificationStatus'] = VerificationStatus
from openapi_client.model.user import User


class TestUser(unittest.TestCase):
    """User unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def testUser(self):
        """Test User"""
        # FIXME: construct object with mandatory attributes with example values
        # model = User()  # noqa: E501
        pass


if __name__ == '__main__':
    unittest.main()
