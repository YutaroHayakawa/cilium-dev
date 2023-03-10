// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/aws/smithy-go/document

package document

import "reflect"

// UnmarshalTypeError is an error type representing an error
// unmarshaling a Smithy document to a Go value type. This is different
// from UnmarshalError in that it does not wrap an underlying error type.
#UnmarshalTypeError: {
	Value: string
	Type:  reflect.#Type
}

// An InvalidUnmarshalError is an error type representing an invalid type
// encountered while unmarshaling a Smithy document to a Go value type.
#InvalidUnmarshalError: {
	Type: reflect.#Type
}

// An UnmarshalError wraps an error that occurred while unmarshaling a
// Smithy document into a Go type. This is different from
// UnmarshalTypeError in that it wraps the underlying error that occurred.
#UnmarshalError: {
	Err:   _ @go(,error)
	Value: string
	Type:  reflect.#Type
}

// An InvalidMarshalError is an error type representing an error
// occurring when marshaling a Go value type.
#InvalidMarshalError: {
	Message: string
}
