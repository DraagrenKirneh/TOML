tests
testExtendedLiteralStringLong

	| root prefix |
	
	prefix := $' asString repeat: 5.
	root := self parse: 'a = ', prefix, 'text' , prefix.
	
	self assert: root at: #a equals: 'text'.