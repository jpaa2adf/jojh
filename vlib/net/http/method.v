// Copyright (c) 2019-2023 Alexander Medvednikov. All rights reserved.
// Use of this source code is governed by an MIT license
// that can be found in the LICENSE file.
module http

// The methods listed here are some of the most used ones, ordered by
// commonality. A comprehensive list is available at:
// https://www.iana.org/assignments/http-methods/http-methods.xhtml
pub enum Method {
	get
	post
	put
	head
	delete
	options
	trace
	connect
	patch
}

// str returns the string representation of the HTTP Method `m`.
pub fn (m Method) str() string {
	return match m {
		.get { 'GET' }
		.post { 'POST' }
		.put { 'PUT' }
		.head { 'HEAD' }
		.delete { 'DELETE' }
		.options { 'OPTIONS' }
		.trace { 'TRACE' }
		.connect { 'CONNECT' }
		.patch { 'PATCH' }
	}
}

// method_from_str returns the corresponding Method enum field
// given a string `m`, e.g. `'GET'` would return Method.get.
//
// Currently, the default value is Method.get for unsupported string value.
pub fn method_from_str(m string) Method {
	return match m {
		'GET' { Method.get }
		'POST' { Method.post }
		'PUT' { Method.put }
		'HEAD' { Method.head }
		'DELETE' { Method.delete }
		'OPTIONS' { Method.options }
		'TRACE' { Method.trace }
		'CONNECT' { Method.connect }
		'PATCH' { Method.patch }
		else { Method.get } // should we default to GET?
	}
}
