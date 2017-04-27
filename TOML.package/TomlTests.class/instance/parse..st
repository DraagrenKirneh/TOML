accessing
parse: aString

	^ (self parserClass on: aString readStream) parse