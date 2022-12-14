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
import Blog from './Blog';
import Role from './Role';
import VerificationStatus from './VerificationStatus';

/**
 * The User model module.
 * @module model/User
 * @version 1.0.0
 */
class User {
    /**
     * Constructs a new <code>User</code>.
     * @alias module:model/User
     */
    constructor() { 
        
        User.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>User</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/User} obj Optional instance to populate.
     * @return {module:model/User} The populated <code>User</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new User();

            if (data.hasOwnProperty('id')) {
                obj['id'] = ApiClient.convertToType(data['id'], 'String');
            }
            if (data.hasOwnProperty('username')) {
                obj['username'] = ApiClient.convertToType(data['username'], 'String');
            }
            if (data.hasOwnProperty('password')) {
                obj['password'] = ApiClient.convertToType(data['password'], 'String');
            }
            if (data.hasOwnProperty('niceName')) {
                obj['niceName'] = ApiClient.convertToType(data['niceName'], 'String');
            }
            if (data.hasOwnProperty('avatarUrl')) {
                obj['avatarUrl'] = ApiClient.convertToType(data['avatarUrl'], 'String');
            }
            if (data.hasOwnProperty('displayName')) {
                obj['displayName'] = ApiClient.convertToType(data['displayName'], 'String');
            }
            if (data.hasOwnProperty('email')) {
                obj['email'] = ApiClient.convertToType(data['email'], 'String');
            }
            if (data.hasOwnProperty('role')) {
                obj['role'] = Role.constructFromObject(data['role']);
            }
            if (data.hasOwnProperty('blogs')) {
                obj['blogs'] = ApiClient.convertToType(data['blogs'], [Blog]);
            }
            if (data.hasOwnProperty('verificationStatus')) {
                obj['verificationStatus'] = VerificationStatus.constructFromObject(data['verificationStatus']);
            }
        }
        return obj;
    }


}

/**
 * @member {String} id
 */
User.prototype['id'] = undefined;

/**
 * @member {String} username
 */
User.prototype['username'] = undefined;

/**
 * @member {String} password
 */
User.prototype['password'] = undefined;

/**
 * @member {String} niceName
 */
User.prototype['niceName'] = undefined;

/**
 * @member {String} avatarUrl
 */
User.prototype['avatarUrl'] = undefined;

/**
 * @member {String} displayName
 */
User.prototype['displayName'] = undefined;

/**
 * @member {String} email
 */
User.prototype['email'] = undefined;

/**
 * @member {module:model/Role} role
 */
User.prototype['role'] = undefined;

/**
 * @member {Array.<module:model/Blog>} blogs
 */
User.prototype['blogs'] = undefined;

/**
 * @member {module:model/VerificationStatus} verificationStatus
 */
User.prototype['verificationStatus'] = undefined;






export default User;

