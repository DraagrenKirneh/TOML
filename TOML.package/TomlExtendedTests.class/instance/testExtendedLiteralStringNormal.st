tests
testExtendedLiteralStringNormal

	| root prefix |
	
	prefix := $' asString repeat: 3.
	root := self parse: 'a = ', prefix, 'text' , prefix.
	
	self assert: root at: #a equals: 'text'.