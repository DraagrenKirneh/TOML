parsing - digit
parseBinaryDigit

	| digit |
	
	digit := stream next asInteger.
	
	(digit between: 48 and: 49) ifTrue: [ ^ digit - 48 ].
	
	self error: digit asString, ' is not a valid binary digit' 