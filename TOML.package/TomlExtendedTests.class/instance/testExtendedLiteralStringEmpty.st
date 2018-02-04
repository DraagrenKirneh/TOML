tests
testExtendedLiteralStringEmpty

	| root |
	
	root := self parse: 'a = '''''.
	
	self assert: root at: #a equals: ''.