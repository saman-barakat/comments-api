import connexion
import six
from typing import Dict
from typing import Tuple
from typing import Union

from gcomments.models.comment import Comment  # noqa: E501
from gcomments.models.media import Media  # noqa: E501
from gcomments import util


def add_comment(comment):  # noqa: E501
    """Add a new comment

     # noqa: E501

    :param comment: Comment object that needs to be added
    :type comment: dict | bytes

    :rtype: Union[None, Tuple[None, int], Tuple[None, int, Dict[str, str]]
    """
    if connexion.request.is_json:
        comment = Comment.from_dict(connexion.request.get_json())  # noqa: E501
    return 'do some magic!'


def delete_comment(comment_id, api_key=None):  # noqa: E501
    """Deletes a comment

     # noqa: E501

    :param comment_id: Comment id to delete
    :type comment_id: str
    :param api_key: 
    :type api_key: str

    :rtype: Union[None, Tuple[None, int], Tuple[None, int, Dict[str, str]]
    """
    return 'do some magic!'


def get_comment_by_id(comment_id):  # noqa: E501
    """Find comment by ID

    Returns a single comment # noqa: E501

    :param comment_id: ID of comment to return
    :type comment_id: str

    :rtype: Union[Comment, Tuple[Comment, int], Tuple[Comment, int, Dict[str, str]]
    """
    return 'do some magic!'


def update_comment(comment):  # noqa: E501
    """Update an existing comment

     # noqa: E501

    :param comment: Comment object that needs to be added
    :type comment: dict | bytes

    :rtype: Union[None, Tuple[None, int], Tuple[None, int, Dict[str, str]]
    """
    if connexion.request.is_json:
        comment = Comment.from_dict(connexion.request.get_json())  # noqa: E501
    return 'do some magic!'


def update_comment_with_form(comment_id, user_id=None, post_id=None, blog_id=None, parent_id=None, author_display_name=None, created_timestamp=None, modified_timestamp=None, content=None, status=None, downvote_count=None, upvote_count=None, media=None):  # noqa: E501
    """Updates a comment with form data

     # noqa: E501

    :param comment_id: ID of comment that needs to be updated
    :type comment_id: str
    :param user_id: 
    :type user_id: str
    :param post_id: 
    :type post_id: str
    :param blog_id: 
    :type blog_id: str
    :param parent_id: 
    :type parent_id: str
    :param author_display_name: 
    :type author_display_name: str
    :param created_timestamp: 
    :type created_timestamp: str
    :param modified_timestamp: 
    :type modified_timestamp: str
    :param content: 
    :type content: str
    :param status: 
    :type status: str
    :param downvote_count: 
    :type downvote_count: int
    :param upvote_count: 
    :type upvote_count: int
    :param media: 
    :type media: dict | bytes

    :rtype: Union[None, Tuple[None, int], Tuple[None, int, Dict[str, str]]
    """
    created_timestamp = util.deserialize_datetime(created_timestamp)
    modified_timestamp = util.deserialize_datetime(modified_timestamp)
    if connexion.request.is_json:
        media = Media.from_dict(connexion.request.get_json())  # noqa: E501
    return 'do some magic!'
