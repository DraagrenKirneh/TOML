tests - chrono
testOffsetDateTime

	| dct odt1 odt2 odt3|
	
	dct := self parse: '
		odt1 = 1447-10-05T07:30:00Z
		odt2 = 2000-01-01T00:04:00-07:00
		odt3 = 2979-05-27T11:17:01.999999-07:00'
	.
		
	odt1 := DateAndTime year: 1447 month: 10 day: 5 hour: 7 minute: 30 second: 0 offset: 0 hours.
	odt2 := DateAndTime year: 2000 month: 1 day: 1 hour: 00 minute: 04 second: 00 nanoSecond: 0 offset: 7 hours.
	odt3 := DateAndTime year: 2979 month: 5 day: 27 hour: 11 minute: 17 second: 01 nanoSecond: 999999 * 1000 offset: 7 hours.
	
	self 
		assert: dct at: 'odt1' equals: odt1;
		assert: dct at: 'odt2' equals: odt2;
		assert: dct at: 'odt3' equals: odt3
		
	
