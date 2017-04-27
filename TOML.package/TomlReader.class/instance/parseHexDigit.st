parsing - numerical
parseHexDigit

	| digit |
	
	digit := stream next asInteger.
	
	(digit between: 48 and:  57) ifTrue: [ ^ digit - 48 ].
	(digit between: 65 and:  70) ifTrue: [ ^ digit - 55 ].
	(digit between: 97 and: 102) ifTrue: [ ^ digit - 87 ].
	
	self error: digit asString, ' is not a valid hexadecimal number' 