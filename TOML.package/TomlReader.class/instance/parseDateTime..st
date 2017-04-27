parsing - chrono
parseDateTime: aDate

	| time offset |
	
	time := self parseTime.
	
	(stream peekFor: $-) ifTrue: [
		| hours minutes |
		hours := self parseInteger.
		self expectColon.
		minutes := self parseInteger.
		offset := Duration minutes: (hours * 60 + minutes)
	] 
	ifFalse: [ 
		stream peekFor: $Z.
		offset := Duration zero.	
	].

	^ DateAndTime 
		year: aDate year
		month: aDate monthName
		day: aDate dayOfMonth 
		hour: time hour 
		minute: time minute 
		second: time second
		nanoSecond: time nanoSecond
		offset: offset.

	