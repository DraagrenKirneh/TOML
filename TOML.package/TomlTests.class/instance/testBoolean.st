tests - number
testBoolean

	| dict |
	
	dict := self parse: '
		bool1 = true
		bool2 = false
	'.
	
	self 
		assert: dict at: #bool1  equals: true ;
		assert: dict at: #bool2 equals: false.