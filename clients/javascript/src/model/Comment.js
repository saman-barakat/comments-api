/**
 * GComments
 * APIs for creating and managing comments 
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: support@comments.app
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';
import Media from './Media';

/**
 * The Comment model module.
 * @module model/Comment
 * @version 1.0.0
 */
class Comment {
    /**
     * Constructs a new <code>Comment</code>.
     * A user-generated comment.
     * @alias module:model/Comment
     */
    constructor() { 
        
        Comment.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>Comment</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/Comment} obj Optional instance to populate.
     * @return {module:model/Comment} The populated <code>Comment</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new Comment();

            if (data.hasOwnProperty('id')) {
                obj['id'] = ApiClient.convertToType(data['id'], 'String');
            }
            if (data.hasOwnProperty('userId')) {
                obj['userId'] = ApiClient.convertToType(data['userId'], 'String');
            }
            if (data.hasOwnProperty('postId')) {
                obj['postId'] = ApiClient.convertToType(data['postId'], 'String');
            }
            if (data.hasOwnProperty('blogId')) {
                obj['blogId'] = ApiClient.convertToType(data['blogId'], 'String');
            }
            if (data.hasOwnProperty('parentId')) {
                obj['parentId'] = ApiClient.convertToType(data['parentId'], 'String');
            }
            if (data.hasOwnProperty('authorDisplayName')) {
                obj['authorDisplayName'] = ApiClient.convertToType(data['authorDisplayName'], 'String');
            }
            if (data.hasOwnProperty('created_timestamp')) {
                obj['created_timestamp'] = ApiClient.convertToType(data['created_timestamp'], 'Date');
            }
            if (data.hasOwnProperty('modified_timestamp')) {
                obj['modified_timestamp'] = ApiClient.convertToType(data['modified_timestamp'], 'Date');
            }
            if (data.hasOwnProperty('content')) {
                obj['content'] = ApiClient.convertToType(data['content'], 'String');
            }
            if (data.hasOwnProperty('status')) {
                obj['status'] = ApiClient.convertToType(data['status'], 'String');
            }
            if (data.hasOwnProperty('downvoteCount')) {
                obj['downvoteCount'] = ApiClient.convertToType(data['downvoteCount'], 'Number');
            }
            if (data.hasOwnProperty('upvoteCount')) {
                obj['upvoteCount'] = ApiClient.convertToType(data['upvoteCount'], 'Number');
            }
            if (data.hasOwnProperty('media')) {
                obj['media'] = Media.constructFromObject(data['media']);
            }
        }
        return obj;
    }


}

/**
 * The ID of this comment.
 * @member {String} id
 */
Comment.prototype['id'] = undefined;

/**
 * The ID of the author.
 * @member {String} userId
 */
Comment.prototype['userId'] = undefined;

/**
 * The ID of the post hosting this comment.
 * @member {String} postId
 */
Comment.prototype['postId'] = undefined;

/**
 * @member {String} blogId
 */
Comment.prototype['blogId'] = undefined;

/**
 * @member {String} parentId
 */
Comment.prototype['parentId'] = undefined;

/**
 * @member {String} authorDisplayName
 */
Comment.prototype['authorDisplayName'] = undefined;

/**
 * @member {Date} created_timestamp
 */
Comment.prototype['created_timestamp'] = undefined;

/**
 * @member {Date} modified_timestamp
 */
Comment.prototype['modified_timestamp'] = undefined;

/**
 * @member {String} content
 */
Comment.prototype['content'] = undefined;

/**
 * @member {module:model/Comment.StatusEnum} status
 */
Comment.prototype['status'] = undefined;

/**
 * @member {Number} downvoteCount
 */
Comment.prototype['downvoteCount'] = undefined;

/**
 * @member {Number} upvoteCount
 */
Comment.prototype['upvoteCount'] = undefined;

/**
 * @member {module:model/Media} media
 */
Comment.prototype['media'] = undefined;





/**
 * Allowed values for the <code>status</code> property.
 * @enum {String}
 * @readonly
 */
Comment['StatusEnum'] = {

    /**
     * value: "Draft"
     * @const
     */
    "Draft": "Draft",

    /**
     * value: "InReview"
     * @const
     */
    "InReview": "InReview",

    /**
     * value: "Flagged"
     * @const
     */
    "Flagged": "Flagged",

    /**
     * value: "Published"
     * @const
     */
    "Published": "Published",

    /**
     * value: "Deleted"
     * @const
     */
    "Deleted": "Deleted"
};



export default Comment;

