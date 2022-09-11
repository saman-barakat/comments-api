import connexion
import six
from typing import Dict
from typing import Tuple
from typing import Union

from gcomments.models.blog import Blog  # noqa: E501
from gcomments import util


def add_blog(blog=None):  # noqa: E501
    """Add a new blog

     # noqa: E501

    :param blog: Blog object that needs to be added
    :type blog: dict | bytes

    :rtype: Union[None, Tuple[None, int], Tuple[None, int, Dict[str, str]]
    """
    if connexion.request.is_json:
        blog = Blog.from_dict(connexion.request.get_json())  # noqa: E501
    return 'do some magic!'


def delete_blog(blog_id, api_key=None):  # noqa: E501
    """Deletes a blog

     # noqa: E501

    :param blog_id: Blog id to delete
    :type blog_id: str
    :param api_key: 
    :type api_key: str

    :rtype: Union[None, Tuple[None, int], Tuple[None, int, Dict[str, str]]
    """
    return 'do some magic!'


def get_blog_by_id(blog_id):  # noqa: E501
    """Find blog by ID

    Returns a single blog # noqa: E501

    :param blog_id: ID of blog to return
    :type blog_id: str

    :rtype: Union[Blog, Tuple[Blog, int], Tuple[Blog, int, Dict[str, str]]
    """
    return 'do some magic!'


def update_blog(blog=None):  # noqa: E501
    """Update an existing blog

     # noqa: E501

    :param blog: Blog object that needs to be added
    :type blog: dict | bytes

    :rtype: Union[None, Tuple[None, int], Tuple[None, int, Dict[str, str]]
    """
    if connexion.request.is_json:
        blog = Blog.from_dict(connexion.request.get_json())  # noqa: E501
    return 'do some magic!'


def update_blog_with_form(blog_id, name=None, url=None, auth_token=None, comment_status=None):  # noqa: E501
    """Updates a blog with form data

     # noqa: E501

    :param blog_id: ID of blog that needs to be updated
    :type blog_id: str
    :param name: 
    :type name: str
    :param url: 
    :type url: str
    :param auth_token: 
    :type auth_token: str
    :param comment_status: 
    :type comment_status: str

    :rtype: Union[None, Tuple[None, int], Tuple[None, int, Dict[str, str]]
    """
    return 'do some magic!'
