# coding: utf-8

from __future__ import absolute_import
from datetime import date, datetime  # noqa: F401

from typing import List, Dict  # noqa: F401

from gcomments.models.base_model_ import Model
from gcomments.models.blog import Blog
from gcomments.models.role import Role
from gcomments.models.verification_status import VerificationStatus
from gcomments import util

from gcomments.models.blog import Blog  # noqa: E501
from gcomments.models.role import Role  # noqa: E501
from gcomments.models.verification_status import VerificationStatus  # noqa: E501

class User(Model):
    """NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

    Do not edit the class manually.
    """

    def __init__(self, id=None, username=None, password=None, nice_name=None, avatar_url=None, display_name=None, email=None, role=None, blogs=None, verification_status=None):  # noqa: E501
        """User - a model defined in OpenAPI

        :param id: The id of this User.  # noqa: E501
        :type id: str
        :param username: The username of this User.  # noqa: E501
        :type username: str
        :param password: The password of this User.  # noqa: E501
        :type password: str
        :param nice_name: The nice_name of this User.  # noqa: E501
        :type nice_name: str
        :param avatar_url: The avatar_url of this User.  # noqa: E501
        :type avatar_url: str
        :param display_name: The display_name of this User.  # noqa: E501
        :type display_name: str
        :param email: The email of this User.  # noqa: E501
        :type email: str
        :param role: The role of this User.  # noqa: E501
        :type role: Role
        :param blogs: The blogs of this User.  # noqa: E501
        :type blogs: List[Blog]
        :param verification_status: The verification_status of this User.  # noqa: E501
        :type verification_status: VerificationStatus
        """
        self.openapi_types = {
            'id': str,
            'username': str,
            'password': str,
            'nice_name': str,
            'avatar_url': str,
            'display_name': str,
            'email': str,
            'role': Role,
            'blogs': List[Blog],
            'verification_status': VerificationStatus
        }

        self.attribute_map = {
            'id': 'id',
            'username': 'username',
            'password': 'password',
            'nice_name': 'niceName',
            'avatar_url': 'avatarUrl',
            'display_name': 'displayName',
            'email': 'email',
            'role': 'role',
            'blogs': 'blogs',
            'verification_status': 'verificationStatus'
        }

        self._id = id
        self._username = username
        self._password = password
        self._nice_name = nice_name
        self._avatar_url = avatar_url
        self._display_name = display_name
        self._email = email
        self._role = role
        self._blogs = blogs
        self._verification_status = verification_status

    @classmethod
    def from_dict(cls, dikt) -> 'User':
        """Returns the dict as a model

        :param dikt: A dict.
        :type: dict
        :return: The User of this User.  # noqa: E501
        :rtype: User
        """
        return util.deserialize_model(dikt, cls)

    @property
    def id(self):
        """Gets the id of this User.


        :return: The id of this User.
        :rtype: str
        """
        return self._id

    @id.setter
    def id(self, id):
        """Sets the id of this User.


        :param id: The id of this User.
        :type id: str
        """

        self._id = id

    @property
    def username(self):
        """Gets the username of this User.


        :return: The username of this User.
        :rtype: str
        """
        return self._username

    @username.setter
    def username(self, username):
        """Sets the username of this User.


        :param username: The username of this User.
        :type username: str
        """

        self._username = username

    @property
    def password(self):
        """Gets the password of this User.


        :return: The password of this User.
        :rtype: str
        """
        return self._password

    @password.setter
    def password(self, password):
        """Sets the password of this User.


        :param password: The password of this User.
        :type password: str
        """

        self._password = password

    @property
    def nice_name(self):
        """Gets the nice_name of this User.


        :return: The nice_name of this User.
        :rtype: str
        """
        return self._nice_name

    @nice_name.setter
    def nice_name(self, nice_name):
        """Sets the nice_name of this User.


        :param nice_name: The nice_name of this User.
        :type nice_name: str
        """

        self._nice_name = nice_name

    @property
    def avatar_url(self):
        """Gets the avatar_url of this User.


        :return: The avatar_url of this User.
        :rtype: str
        """
        return self._avatar_url

    @avatar_url.setter
    def avatar_url(self, avatar_url):
        """Sets the avatar_url of this User.


        :param avatar_url: The avatar_url of this User.
        :type avatar_url: str
        """

        self._avatar_url = avatar_url

    @property
    def display_name(self):
        """Gets the display_name of this User.


        :return: The display_name of this User.
        :rtype: str
        """
        return self._display_name

    @display_name.setter
    def display_name(self, display_name):
        """Sets the display_name of this User.


        :param display_name: The display_name of this User.
        :type display_name: str
        """

        self._display_name = display_name

    @property
    def email(self):
        """Gets the email of this User.


        :return: The email of this User.
        :rtype: str
        """
        return self._email

    @email.setter
    def email(self, email):
        """Sets the email of this User.


        :param email: The email of this User.
        :type email: str
        """

        self._email = email

    @property
    def role(self):
        """Gets the role of this User.


        :return: The role of this User.
        :rtype: Role
        """
        return self._role

    @role.setter
    def role(self, role):
        """Sets the role of this User.


        :param role: The role of this User.
        :type role: Role
        """

        self._role = role

    @property
    def blogs(self):
        """Gets the blogs of this User.


        :return: The blogs of this User.
        :rtype: List[Blog]
        """
        return self._blogs

    @blogs.setter
    def blogs(self, blogs):
        """Sets the blogs of this User.


        :param blogs: The blogs of this User.
        :type blogs: List[Blog]
        """

        self._blogs = blogs

    @property
    def verification_status(self):
        """Gets the verification_status of this User.


        :return: The verification_status of this User.
        :rtype: VerificationStatus
        """
        return self._verification_status

    @verification_status.setter
    def verification_status(self, verification_status):
        """Sets the verification_status of this User.


        :param verification_status: The verification_status of this User.
        :type verification_status: VerificationStatus
        """

        self._verification_status = verification_status
