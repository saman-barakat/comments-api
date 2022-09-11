/**
 * Open APi
 * This is a sample server. 
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: email@gmail.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { RequestFile } from './models';

export class VerificationStatus {
    'isVerified'?: boolean;
    'verificationTimestamp'?: Date;
    'verificationMethod'?: string;

    static discriminator: string | undefined = undefined;

    static attributeTypeMap: Array<{name: string, baseName: string, type: string}> = [
        {
            "name": "isVerified",
            "baseName": "isVerified",
            "type": "boolean"
        },
        {
            "name": "verificationTimestamp",
            "baseName": "verificationTimestamp",
            "type": "Date"
        },
        {
            "name": "verificationMethod",
            "baseName": "verificationMethod",
            "type": "string"
        }    ];

    static getAttributeTypeMap() {
        return VerificationStatus.attributeTypeMap;
    }
}
