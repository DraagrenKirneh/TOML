tests - chrono
testLocalDateTime

	| dct ldt1 ldt2 |
	
	ldt1 := DateAndTime year: 1979 month: 5 day: 27 hour: 7 minute: 32 second: 19 offset: Duration zero.
	ldt2 := DateAndTime year: 1979 month: 5 day: 27 hour: 10 minute: 32 second: 13 nanoSecond: 999999 * 1000 offset: Duration zero.
	
	dct := self parse: '
		ldt1 = 1979-05-27T07:32:19
		ldt2 = 1979-05-27T10:32:13.999999
	'.
	
	self 
		assert: dct at: #ldt1 equals: ldt1;
		assert: dct at: #ldt2 equals: ldt2.
		
	dct := self parse: '
		ldt1 = 1979-05-27 07:32:19
		ldt2 = 1979-05-27 10:32:13.999999
	'.
	
	self 
		assert: dct at: #ldt1 equals: ldt1;
		assert: dct at: #ldt2 equals: ldt2.
		