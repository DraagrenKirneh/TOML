parsing - chrono
parseTime

	| year |
	
	year := self parseInteger.
	
	self expectColon.
	
	^ self parseTime: year.