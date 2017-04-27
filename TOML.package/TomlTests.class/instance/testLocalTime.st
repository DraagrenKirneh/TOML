tests - chrono
testLocalTime

	| dict |
	
	dict := self parse: '
		lt1 = 07:32:00
		lt2 = 00:32:00.999999
	'.
	
	self 
		assert: dict at: 'lt1' equals: (Time hour: 7 minute: 32 second: 0);
		assert: dict at: 'lt2' equals: (Time hour: 0 minute: 32 second: 0 nano: 999999).