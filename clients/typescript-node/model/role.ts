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
 */

import { RequestFile } from './models';

export class Role {
    'name'?: string;
    'capabilities'?: Array<string>;

    static discriminator: string | undefined = undefined;

    static attributeTypeMap: Array<{name: string, baseName: string, type: string}> = [
        {
            "name": "name",
            "baseName": "name",
            "type": "string"
        },
        {
            "name": "capabilities",
            "baseName": "capabilities",
            "type": "Array<string>"
        }    ];

    static getAttributeTypeMap() {
        return Role.attributeTypeMap;
    }
}

