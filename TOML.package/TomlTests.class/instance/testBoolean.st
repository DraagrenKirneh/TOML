tests
testBoolean

	| dict |
	
	dict := self parse: '
		True = true
		False = false
	'.
	
	self 
		assert: dict at: 'True'  equals: true ;
		assert: dict at: 'False' equals: false.