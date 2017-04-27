parsing - chrono
parseDate: year

	| month day date |
	
	month := self parseInteger.
	
	self expectHyphen.
		
	day := self parseInteger.
	
	date := Date newDay: day month: month year: year.	
	^ (stream peekFor: $T) 
		ifTrue: [ self parseDateTime: date ]
		ifFalse: [ date ]
	