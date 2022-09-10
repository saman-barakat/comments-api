"""
    Open APi

    This is a sample server.   # noqa: E501

    The version of the OpenAPI document: 1.0.0
    Contact: email@gmail.com
    Generated by: https://openapi-generator.tech
"""


import re  # noqa: F401
import sys  # noqa: F401

from openapi_client.api_client import ApiClient, Endpoint as _Endpoint
from openapi_client.model_utils import (  # noqa: F401
    check_allowed_values,
    check_validations,
    date,
    datetime,
    file_type,
    none_type,
    validate_and_convert_types
)
from openapi_client.model.comment import Comment
from openapi_client.model.media import Media


class CommentApi(object):
    """NOTE: This class is auto generated by OpenAPI Generator
    Ref: https://openapi-generator.tech

    Do not edit the class manually.
    """

    def __init__(self, api_client=None):
        if api_client is None:
            api_client = ApiClient()
        self.api_client = api_client
        self.add_comment_endpoint = _Endpoint(
            settings={
                'response_type': None,
                'auth': [
                    'cm_auth'
                ],
                'endpoint_path': '/comment',
                'operation_id': 'add_comment',
                'http_method': 'POST',
                'servers': None,
            },
            params_map={
                'all': [
                    'comment',
                ],
                'required': [
                    'comment',
                ],
                'nullable': [
                ],
                'enum': [
                ],
                'validation': [
                ]
            },
            root_map={
                'validations': {
                },
                'allowed_values': {
                },
                'openapi_types': {
                    'comment':
                        (Comment,),
                },
                'attribute_map': {
                },
                'location_map': {
                    'comment': 'body',
                },
                'collection_format_map': {
                }
            },
            headers_map={
                'accept': [],
                'content_type': [
                    'application/json',
                    'application/xml'
                ]
            },
            api_client=api_client
        )
        self.delete_comment_endpoint = _Endpoint(
            settings={
                'response_type': None,
                'auth': [
                    'cm_auth'
                ],
                'endpoint_path': '/comment/{commentId}',
                'operation_id': 'delete_comment',
                'http_method': 'DELETE',
                'servers': None,
            },
            params_map={
                'all': [
                    'comment_id',
                    'api_key',
                ],
                'required': [
                    'comment_id',
                ],
                'nullable': [
                ],
                'enum': [
                ],
                'validation': [
                ]
            },
            root_map={
                'validations': {
                },
                'allowed_values': {
                },
                'openapi_types': {
                    'comment_id':
                        (str,),
                    'api_key':
                        (str,),
                },
                'attribute_map': {
                    'comment_id': 'commentId',
                    'api_key': 'api_key',
                },
                'location_map': {
                    'comment_id': 'path',
                    'api_key': 'header',
                },
                'collection_format_map': {
                }
            },
            headers_map={
                'accept': [],
                'content_type': [],
            },
            api_client=api_client
        )
        self.get_comment_by_id_endpoint = _Endpoint(
            settings={
                'response_type': (Comment,),
                'auth': [
                    'api_key'
                ],
                'endpoint_path': '/comment/{commentId}',
                'operation_id': 'get_comment_by_id',
                'http_method': 'GET',
                'servers': None,
            },
            params_map={
                'all': [
                    'comment_id',
                ],
                'required': [
                    'comment_id',
                ],
                'nullable': [
                ],
                'enum': [
                ],
                'validation': [
                ]
            },
            root_map={
                'validations': {
                },
                'allowed_values': {
                },
                'openapi_types': {
                    'comment_id':
                        (str,),
                },
                'attribute_map': {
                    'comment_id': 'commentId',
                },
                'location_map': {
                    'comment_id': 'path',
                },
                'collection_format_map': {
                }
            },
            headers_map={
                'accept': [
                    'application/json',
                    'application/xml'
                ],
                'content_type': [],
            },
            api_client=api_client
        )
        self.update_comment_endpoint = _Endpoint(
            settings={
                'response_type': None,
                'auth': [
                    'cm_auth'
                ],
                'endpoint_path': '/comment',
                'operation_id': 'update_comment',
                'http_method': 'PUT',
                'servers': None,
            },
            params_map={
                'all': [
                    'comment',
                ],
                'required': [
                    'comment',
                ],
                'nullable': [
                ],
                'enum': [
                ],
                'validation': [
                ]
            },
            root_map={
                'validations': {
                },
                'allowed_values': {
                },
                'openapi_types': {
                    'comment':
                        (Comment,),
                },
                'attribute_map': {
                },
                'location_map': {
                    'comment': 'body',
                },
                'collection_format_map': {
                }
            },
            headers_map={
                'accept': [],
                'content_type': [
                    'application/json',
                    'application/xml'
                ]
            },
            api_client=api_client
        )
        self.update_comment_with_form_endpoint = _Endpoint(
            settings={
                'response_type': None,
                'auth': [
                    'cm_auth'
                ],
                'endpoint_path': '/comment/{commentId}',
                'operation_id': 'update_comment_with_form',
                'http_method': 'POST',
                'servers': None,
            },
            params_map={
                'all': [
                    'comment_id',
                    'user_id',
                    'post_id',
                    'blog_id',
                    'parent_id',
                    'author_display_name',
                    'created_timestamp',
                    'modified_timestamp',
                    'content',
                    'status',
                    'downvote_count',
                    'upvote_count',
                    'media',
                ],
                'required': [
                    'comment_id',
                ],
                'nullable': [
                ],
                'enum': [
                    'status',
                ],
                'validation': [
                ]
            },
            root_map={
                'validations': {
                },
                'allowed_values': {
                    ('status',): {

                        "DRAFT": "Draft",
                        "INREVIEW": "InReview",
                        "FLAGGED": "Flagged",
                        "PUBLISHED": "Published"
                    },
                },
                'openapi_types': {
                    'comment_id':
                        (str,),
                    'user_id':
                        (str,),
                    'post_id':
                        (str,),
                    'blog_id':
                        (str,),
                    'parent_id':
                        (str,),
                    'author_display_name':
                        (str,),
                    'created_timestamp':
                        (datetime,),
                    'modified_timestamp':
                        (datetime,),
                    'content':
                        (str,),
                    'status':
                        (str,),
                    'downvote_count':
                        (int,),
                    'upvote_count':
                        (int,),
                    'media':
                        (Media,),
                },
                'attribute_map': {
                    'comment_id': 'commentId',
                    'user_id': 'userId',
                    'post_id': 'postId',
                    'blog_id': 'blogId',
                    'parent_id': 'parentId',
                    'author_display_name': 'authorDisplayName',
                    'created_timestamp': 'created_timestamp',
                    'modified_timestamp': 'modified_timestamp',
                    'content': 'content',
                    'status': 'status',
                    'downvote_count': 'downvoteCount',
                    'upvote_count': 'upvoteCount',
                    'media': 'media',
                },
                'location_map': {
                    'comment_id': 'path',
                    'user_id': 'form',
                    'post_id': 'form',
                    'blog_id': 'form',
                    'parent_id': 'form',
                    'author_display_name': 'form',
                    'created_timestamp': 'form',
                    'modified_timestamp': 'form',
                    'content': 'form',
                    'status': 'form',
                    'downvote_count': 'form',
                    'upvote_count': 'form',
                    'media': 'form',
                },
                'collection_format_map': {
                }
            },
            headers_map={
                'accept': [],
                'content_type': [
                    'application/x-www-form-urlencoded'
                ]
            },
            api_client=api_client
        )

    def add_comment(
        self,
        comment,
        **kwargs
    ):
        """Add a new comment  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True

        >>> thread = api.add_comment(comment, async_req=True)
        >>> result = thread.get()

        Args:
            comment (Comment): Comment object that needs to be added

        Keyword Args:
            _return_http_data_only (bool): response data without head status
                code and headers. Default is True.
            _preload_content (bool): if False, the urllib3.HTTPResponse object
                will be returned without reading/decoding response data.
                Default is True.
            _request_timeout (int/float/tuple): timeout setting for this request. If
                one number provided, it will be total request timeout. It can also
                be a pair (tuple) of (connection, read) timeouts.
                Default is None.
            _check_input_type (bool): specifies if type checking
                should be done one the data sent to the server.
                Default is True.
            _check_return_type (bool): specifies if type checking
                should be done one the data received from the server.
                Default is True.
            _spec_property_naming (bool): True if the variable names in the input data
                are serialized names, as specified in the OpenAPI document.
                False if the variable names in the input data
                are pythonic names, e.g. snake case (default)
            _content_type (str/None): force body content-type.
                Default is None and content-type will be predicted by allowed
                content-types and body.
            _host_index (int/None): specifies the index of the server
                that we want to use.
                Default is read from the configuration.
            _request_auths (list): set to override the auth_settings for an a single
                request; this effectively ignores the authentication
                in the spec for a single request.
                Default is None
            async_req (bool): execute request asynchronously

        Returns:
            None
                If the method is called asynchronously, returns the request
                thread.
        """
        kwargs['async_req'] = kwargs.get(
            'async_req', False
        )
        kwargs['_return_http_data_only'] = kwargs.get(
            '_return_http_data_only', True
        )
        kwargs['_preload_content'] = kwargs.get(
            '_preload_content', True
        )
        kwargs['_request_timeout'] = kwargs.get(
            '_request_timeout', None
        )
        kwargs['_check_input_type'] = kwargs.get(
            '_check_input_type', True
        )
        kwargs['_check_return_type'] = kwargs.get(
            '_check_return_type', True
        )
        kwargs['_spec_property_naming'] = kwargs.get(
            '_spec_property_naming', False
        )
        kwargs['_content_type'] = kwargs.get(
            '_content_type')
        kwargs['_host_index'] = kwargs.get('_host_index')
        kwargs['_request_auths'] = kwargs.get('_request_auths', None)
        kwargs['comment'] = \
            comment
        return self.add_comment_endpoint.call_with_http_info(**kwargs)

    def delete_comment(
        self,
        comment_id,
        **kwargs
    ):
        """Deletes a comment  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True

        >>> thread = api.delete_comment(comment_id, async_req=True)
        >>> result = thread.get()

        Args:
            comment_id (str): Comment id to delete

        Keyword Args:
            api_key (str): [optional]
            _return_http_data_only (bool): response data without head status
                code and headers. Default is True.
            _preload_content (bool): if False, the urllib3.HTTPResponse object
                will be returned without reading/decoding response data.
                Default is True.
            _request_timeout (int/float/tuple): timeout setting for this request. If
                one number provided, it will be total request timeout. It can also
                be a pair (tuple) of (connection, read) timeouts.
                Default is None.
            _check_input_type (bool): specifies if type checking
                should be done one the data sent to the server.
                Default is True.
            _check_return_type (bool): specifies if type checking
                should be done one the data received from the server.
                Default is True.
            _spec_property_naming (bool): True if the variable names in the input data
                are serialized names, as specified in the OpenAPI document.
                False if the variable names in the input data
                are pythonic names, e.g. snake case (default)
            _content_type (str/None): force body content-type.
                Default is None and content-type will be predicted by allowed
                content-types and body.
            _host_index (int/None): specifies the index of the server
                that we want to use.
                Default is read from the configuration.
            _request_auths (list): set to override the auth_settings for an a single
                request; this effectively ignores the authentication
                in the spec for a single request.
                Default is None
            async_req (bool): execute request asynchronously

        Returns:
            None
                If the method is called asynchronously, returns the request
                thread.
        """
        kwargs['async_req'] = kwargs.get(
            'async_req', False
        )
        kwargs['_return_http_data_only'] = kwargs.get(
            '_return_http_data_only', True
        )
        kwargs['_preload_content'] = kwargs.get(
            '_preload_content', True
        )
        kwargs['_request_timeout'] = kwargs.get(
            '_request_timeout', None
        )
        kwargs['_check_input_type'] = kwargs.get(
            '_check_input_type', True
        )
        kwargs['_check_return_type'] = kwargs.get(
            '_check_return_type', True
        )
        kwargs['_spec_property_naming'] = kwargs.get(
            '_spec_property_naming', False
        )
        kwargs['_content_type'] = kwargs.get(
            '_content_type')
        kwargs['_host_index'] = kwargs.get('_host_index')
        kwargs['_request_auths'] = kwargs.get('_request_auths', None)
        kwargs['comment_id'] = \
            comment_id
        return self.delete_comment_endpoint.call_with_http_info(**kwargs)

    def get_comment_by_id(
        self,
        comment_id,
        **kwargs
    ):
        """Find comment by ID  # noqa: E501

        Returns a single comment  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True

        >>> thread = api.get_comment_by_id(comment_id, async_req=True)
        >>> result = thread.get()

        Args:
            comment_id (str): ID of comment to return

        Keyword Args:
            _return_http_data_only (bool): response data without head status
                code and headers. Default is True.
            _preload_content (bool): if False, the urllib3.HTTPResponse object
                will be returned without reading/decoding response data.
                Default is True.
            _request_timeout (int/float/tuple): timeout setting for this request. If
                one number provided, it will be total request timeout. It can also
                be a pair (tuple) of (connection, read) timeouts.
                Default is None.
            _check_input_type (bool): specifies if type checking
                should be done one the data sent to the server.
                Default is True.
            _check_return_type (bool): specifies if type checking
                should be done one the data received from the server.
                Default is True.
            _spec_property_naming (bool): True if the variable names in the input data
                are serialized names, as specified in the OpenAPI document.
                False if the variable names in the input data
                are pythonic names, e.g. snake case (default)
            _content_type (str/None): force body content-type.
                Default is None and content-type will be predicted by allowed
                content-types and body.
            _host_index (int/None): specifies the index of the server
                that we want to use.
                Default is read from the configuration.
            _request_auths (list): set to override the auth_settings for an a single
                request; this effectively ignores the authentication
                in the spec for a single request.
                Default is None
            async_req (bool): execute request asynchronously

        Returns:
            Comment
                If the method is called asynchronously, returns the request
                thread.
        """
        kwargs['async_req'] = kwargs.get(
            'async_req', False
        )
        kwargs['_return_http_data_only'] = kwargs.get(
            '_return_http_data_only', True
        )
        kwargs['_preload_content'] = kwargs.get(
            '_preload_content', True
        )
        kwargs['_request_timeout'] = kwargs.get(
            '_request_timeout', None
        )
        kwargs['_check_input_type'] = kwargs.get(
            '_check_input_type', True
        )
        kwargs['_check_return_type'] = kwargs.get(
            '_check_return_type', True
        )
        kwargs['_spec_property_naming'] = kwargs.get(
            '_spec_property_naming', False
        )
        kwargs['_content_type'] = kwargs.get(
            '_content_type')
        kwargs['_host_index'] = kwargs.get('_host_index')
        kwargs['_request_auths'] = kwargs.get('_request_auths', None)
        kwargs['comment_id'] = \
            comment_id
        return self.get_comment_by_id_endpoint.call_with_http_info(**kwargs)

    def update_comment(
        self,
        comment,
        **kwargs
    ):
        """Update an existing comment  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True

        >>> thread = api.update_comment(comment, async_req=True)
        >>> result = thread.get()

        Args:
            comment (Comment): Comment object that needs to be added

        Keyword Args:
            _return_http_data_only (bool): response data without head status
                code and headers. Default is True.
            _preload_content (bool): if False, the urllib3.HTTPResponse object
                will be returned without reading/decoding response data.
                Default is True.
            _request_timeout (int/float/tuple): timeout setting for this request. If
                one number provided, it will be total request timeout. It can also
                be a pair (tuple) of (connection, read) timeouts.
                Default is None.
            _check_input_type (bool): specifies if type checking
                should be done one the data sent to the server.
                Default is True.
            _check_return_type (bool): specifies if type checking
                should be done one the data received from the server.
                Default is True.
            _spec_property_naming (bool): True if the variable names in the input data
                are serialized names, as specified in the OpenAPI document.
                False if the variable names in the input data
                are pythonic names, e.g. snake case (default)
            _content_type (str/None): force body content-type.
                Default is None and content-type will be predicted by allowed
                content-types and body.
            _host_index (int/None): specifies the index of the server
                that we want to use.
                Default is read from the configuration.
            _request_auths (list): set to override the auth_settings for an a single
                request; this effectively ignores the authentication
                in the spec for a single request.
                Default is None
            async_req (bool): execute request asynchronously

        Returns:
            None
                If the method is called asynchronously, returns the request
                thread.
        """
        kwargs['async_req'] = kwargs.get(
            'async_req', False
        )
        kwargs['_return_http_data_only'] = kwargs.get(
            '_return_http_data_only', True
        )
        kwargs['_preload_content'] = kwargs.get(
            '_preload_content', True
        )
        kwargs['_request_timeout'] = kwargs.get(
            '_request_timeout', None
        )
        kwargs['_check_input_type'] = kwargs.get(
            '_check_input_type', True
        )
        kwargs['_check_return_type'] = kwargs.get(
            '_check_return_type', True
        )
        kwargs['_spec_property_naming'] = kwargs.get(
            '_spec_property_naming', False
        )
        kwargs['_content_type'] = kwargs.get(
            '_content_type')
        kwargs['_host_index'] = kwargs.get('_host_index')
        kwargs['_request_auths'] = kwargs.get('_request_auths', None)
        kwargs['comment'] = \
            comment
        return self.update_comment_endpoint.call_with_http_info(**kwargs)

    def update_comment_with_form(
        self,
        comment_id,
        **kwargs
    ):
        """Updates a comment with form data  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True

        >>> thread = api.update_comment_with_form(comment_id, async_req=True)
        >>> result = thread.get()

        Args:
            comment_id (str): ID of comment that needs to be updated

        Keyword Args:
            user_id (str): [optional]
            post_id (str): [optional]
            blog_id (str): [optional]
            parent_id (str): [optional]
            author_display_name (str): [optional]
            created_timestamp (datetime): [optional]
            modified_timestamp (datetime): [optional]
            content (str): [optional]
            status (str): [optional]
            downvote_count (int): [optional]
            upvote_count (int): [optional]
            media (Media): [optional]
            _return_http_data_only (bool): response data without head status
                code and headers. Default is True.
            _preload_content (bool): if False, the urllib3.HTTPResponse object
                will be returned without reading/decoding response data.
                Default is True.
            _request_timeout (int/float/tuple): timeout setting for this request. If
                one number provided, it will be total request timeout. It can also
                be a pair (tuple) of (connection, read) timeouts.
                Default is None.
            _check_input_type (bool): specifies if type checking
                should be done one the data sent to the server.
                Default is True.
            _check_return_type (bool): specifies if type checking
                should be done one the data received from the server.
                Default is True.
            _spec_property_naming (bool): True if the variable names in the input data
                are serialized names, as specified in the OpenAPI document.
                False if the variable names in the input data
                are pythonic names, e.g. snake case (default)
            _content_type (str/None): force body content-type.
                Default is None and content-type will be predicted by allowed
                content-types and body.
            _host_index (int/None): specifies the index of the server
                that we want to use.
                Default is read from the configuration.
            _request_auths (list): set to override the auth_settings for an a single
                request; this effectively ignores the authentication
                in the spec for a single request.
                Default is None
            async_req (bool): execute request asynchronously

        Returns:
            None
                If the method is called asynchronously, returns the request
                thread.
        """
        kwargs['async_req'] = kwargs.get(
            'async_req', False
        )
        kwargs['_return_http_data_only'] = kwargs.get(
            '_return_http_data_only', True
        )
        kwargs['_preload_content'] = kwargs.get(
            '_preload_content', True
        )
        kwargs['_request_timeout'] = kwargs.get(
            '_request_timeout', None
        )
        kwargs['_check_input_type'] = kwargs.get(
            '_check_input_type', True
        )
        kwargs['_check_return_type'] = kwargs.get(
            '_check_return_type', True
        )
        kwargs['_spec_property_naming'] = kwargs.get(
            '_spec_property_naming', False
        )
        kwargs['_content_type'] = kwargs.get(
            '_content_type')
        kwargs['_host_index'] = kwargs.get('_host_index')
        kwargs['_request_auths'] = kwargs.get('_request_auths', None)
        kwargs['comment_id'] = \
            comment_id
        return self.update_comment_with_form_endpoint.call_with_http_info(**kwargs)

