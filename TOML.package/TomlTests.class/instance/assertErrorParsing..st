asserting
assertErrorParsing: aString

	self should: [ self parse: aString ] raise: Error 