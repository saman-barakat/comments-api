# coding: utf-8

from __future__ import absolute_import
from datetime import date, datetime  # noqa: F401

from typing import List, Dict  # noqa: F401

from gcomments.models.base_model_ import Model
from gcomments import util


class VerificationStatus(Model):
    """NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

    Do not edit the class manually.
    """

    def __init__(self, is_verified=None, verification_timestamp=None, verification_method=None):  # noqa: E501
        """VerificationStatus - a model defined in OpenAPI

        :param is_verified: The is_verified of this VerificationStatus.  # noqa: E501
        :type is_verified: bool
        :param verification_timestamp: The verification_timestamp of this VerificationStatus.  # noqa: E501
        :type verification_timestamp: datetime
        :param verification_method: The verification_method of this VerificationStatus.  # noqa: E501
        :type verification_method: str
        """
        self.openapi_types = {
            'is_verified': bool,
            'verification_timestamp': datetime,
            'verification_method': str
        }

        self.attribute_map = {
            'is_verified': 'isVerified',
            'verification_timestamp': 'verificationTimestamp',
            'verification_method': 'verificationMethod'
        }

        self._is_verified = is_verified
        self._verification_timestamp = verification_timestamp
        self._verification_method = verification_method

    @classmethod
    def from_dict(cls, dikt) -> 'VerificationStatus':
        """Returns the dict as a model

        :param dikt: A dict.
        :type: dict
        :return: The VerificationStatus of this VerificationStatus.  # noqa: E501
        :rtype: VerificationStatus
        """
        return util.deserialize_model(dikt, cls)

    @property
    def is_verified(self):
        """Gets the is_verified of this VerificationStatus.


        :return: The is_verified of this VerificationStatus.
        :rtype: bool
        """
        return self._is_verified

    @is_verified.setter
    def is_verified(self, is_verified):
        """Sets the is_verified of this VerificationStatus.


        :param is_verified: The is_verified of this VerificationStatus.
        :type is_verified: bool
        """

        self._is_verified = is_verified

    @property
    def verification_timestamp(self):
        """Gets the verification_timestamp of this VerificationStatus.


        :return: The verification_timestamp of this VerificationStatus.
        :rtype: datetime
        """
        return self._verification_timestamp

    @verification_timestamp.setter
    def verification_timestamp(self, verification_timestamp):
        """Sets the verification_timestamp of this VerificationStatus.


        :param verification_timestamp: The verification_timestamp of this VerificationStatus.
        :type verification_timestamp: datetime
        """

        self._verification_timestamp = verification_timestamp

    @property
    def verification_method(self):
        """Gets the verification_method of this VerificationStatus.


        :return: The verification_method of this VerificationStatus.
        :rtype: str
        """
        return self._verification_method

    @verification_method.setter
    def verification_method(self, verification_method):
        """Sets the verification_method of this VerificationStatus.


        :param verification_method: The verification_method of this VerificationStatus.
        :type verification_method: str
        """

        self._verification_method = verification_method
