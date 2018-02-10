tests - chrono
testLocalDate

	| dct |
	
	dct := self parse: 'ld1 = 1979-05-27 '.
	
	self assert: dct at: #ld1 equals: '1979-05-27' asDate