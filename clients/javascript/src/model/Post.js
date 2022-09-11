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

/**
 * The Post model module.
 * @module model/Post
 * @version 1.0.0
 */
class Post {
    /**
     * Constructs a new <code>Post</code>.
     * @alias module:model/Post
     */
    constructor() { 
        
        Post.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>Post</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/Post} obj Optional instance to populate.
     * @return {module:model/Post} The populated <code>Post</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new Post();

            if (data.hasOwnProperty('id')) {
                obj['id'] = ApiClient.convertToType(data['id'], 'String');
            }
            if (data.hasOwnProperty('title')) {
                obj['title'] = ApiClient.convertToType(data['title'], 'String');
            }
            if (data.hasOwnProperty('url')) {
                obj['url'] = ApiClient.convertToType(data['url'], 'String');
            }
            if (data.hasOwnProperty('excerpt')) {
                obj['excerpt'] = ApiClient.convertToType(data['excerpt'], 'String');
            }
            if (data.hasOwnProperty('content')) {
                obj['content'] = ApiClient.convertToType(data['content'], 'String');
            }
            if (data.hasOwnProperty('commentStatus')) {
                obj['commentStatus'] = ApiClient.convertToType(data['commentStatus'], 'String');
            }
            if (data.hasOwnProperty('postType')) {
                obj['postType'] = ApiClient.convertToType(data['postType'], 'String');
            }
        }
        return obj;
    }


}

/**
 * @member {String} id
 */
Post.prototype['id'] = undefined;

/**
 * @member {String} title
 */
Post.prototype['title'] = undefined;

/**
 * @member {String} url
 */
Post.prototype['url'] = undefined;

/**
 * @member {String} excerpt
 */
Post.prototype['excerpt'] = undefined;

/**
 * @member {String} content
 */
Post.prototype['content'] = undefined;

/**
 * @member {module:model/Post.CommentStatusEnum} commentStatus
 */
Post.prototype['commentStatus'] = undefined;

/**
 * @member {String} postType
 */
Post.prototype['postType'] = undefined;





/**
 * Allowed values for the <code>commentStatus</code> property.
 * @enum {String}
 * @readonly
 */
Post['CommentStatusEnum'] = {

    /**
     * value: "Disabled"
     * @const
     */
    "Disabled": "Disabled",

    /**
     * value: "RequireReview"
     * @const
     */
    "RequireReview": "RequireReview",

    /**
     * value: "AutomateReview"
     * @const
     */
    "AutomateReview": "AutomateReview"
};



export default Post;

