/*
 * Open APi
 *
 * This is a sample server. 
 *
 * API version: 1.0.0
 * Contact: email@gmail.com
 * Generated by: OpenAPI Generator (https://openapi-generator.tech)
 */

package openapi

import (
	"time"
)

type VerificationStatus struct {

	IsVerified bool `json:"isVerified,omitempty"`

	VerificationTimestamp time.Time `json:"verificationTimestamp,omitempty"`

	VerificationMethod string `json:"verificationMethod,omitempty"`
}

// AssertVerificationStatusRequired checks if the required fields are not zero-ed
func AssertVerificationStatusRequired(obj VerificationStatus) error {
	return nil
}

// AssertRecurseVerificationStatusRequired recursively checks if required fields are not zero-ed in a nested slice.
// Accepts only nested slice of VerificationStatus (e.g. [][]VerificationStatus), otherwise ErrTypeAssertionError is thrown.
func AssertRecurseVerificationStatusRequired(objSlice interface{}) error {
	return AssertRecurseInterfaceRequired(objSlice, func(obj interface{}) error {
		aVerificationStatus, ok := obj.(VerificationStatus)
		if !ok {
			return ErrTypeAssertionError
		}
		return AssertVerificationStatusRequired(aVerificationStatus)
	})
}