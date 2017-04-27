tests
testNil

	| root |
	
	root := self parse: 'a = nil'.
	
	self assert: root at: #a equals: nil.