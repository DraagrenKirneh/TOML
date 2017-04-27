tests
testBasicReference

	| dict |
	
	dict := self parse: '
		a = 5 
		b = @a
		
		c = @ d
		d = 41
	'.
	
	self 
		assert: dict at: #a equals: 5;
		assert: dict at: #b equals: 5;
		assert: dict at: #c equals: 41;
		assert: dict at: #d equals: 41