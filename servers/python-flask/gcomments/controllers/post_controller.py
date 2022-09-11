import connexion
import six
from typing import Dict
from typing import Tuple
from typing import Union

from gcomments.models.post import Post  # noqa: E501
from gcomments import util


def add_post(post=None):  # noqa: E501
    """Add a new post

     # noqa: E501

    :param post: Post object that needs to be added
    :type post: dict | bytes

    :rtype: Union[None, Tuple[None, int], Tuple[None, int, Dict[str, str]]
    """
    if connexion.request.is_json:
        post = Post.from_dict(connexion.request.get_json())  # noqa: E501
    return 'do some magic!'


def delete_post(post_id, api_key=None):  # noqa: E501
    """Deletes a post

     # noqa: E501

    :param post_id: Post id to delete
    :type post_id: str
    :param api_key: 
    :type api_key: str

    :rtype: Union[None, Tuple[None, int], Tuple[None, int, Dict[str, str]]
    """
    return 'do some magic!'


def get_post_by_id(post_id):  # noqa: E501
    """Find post by ID

    Returns a single post # noqa: E501

    :param post_id: ID of post to return
    :type post_id: str

    :rtype: Union[Post, Tuple[Post, int], Tuple[Post, int, Dict[str, str]]
    """
    return 'do some magic!'


def update_post(post=None):  # noqa: E501
    """Update an existing post

     # noqa: E501

    :param post: Post object that needs to be added
    :type post: dict | bytes

    :rtype: Union[None, Tuple[None, int], Tuple[None, int, Dict[str, str]]
    """
    if connexion.request.is_json:
        post = Post.from_dict(connexion.request.get_json())  # noqa: E501
    return 'do some magic!'


def update_post_with_form(post_id, title=None, url=None, excerpt=None, content=None, comment_status=None, post_type=None):  # noqa: E501
    """Updates a post with form data

     # noqa: E501

    :param post_id: ID of post that needs to be updated
    :type post_id: str
    :param title: 
    :type title: str
    :param url: 
    :type url: str
    :param excerpt: 
    :type excerpt: str
    :param content: 
    :type content: str
    :param comment_status: 
    :type comment_status: str
    :param post_type: 
    :type post_type: str

    :rtype: Union[None, Tuple[None, int], Tuple[None, int, Dict[str, str]]
    """
    return 'do some magic!'
