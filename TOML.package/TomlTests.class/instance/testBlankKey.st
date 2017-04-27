tests - key
testBlankKey

	| dct |
	
	dct := self parse: '"" = "blank"'.
	
	self assert: dct at: #'' equals: 'blank'.
	
	dct := self parse: ''''' = "blank"'.
	
	self assert: dct at: #'' equals: 'blank'