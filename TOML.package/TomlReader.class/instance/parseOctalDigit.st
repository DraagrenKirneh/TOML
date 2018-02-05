parsing - digit
parseOctalDigit

	| digit |
	
	digit := stream next asInteger.
	
	(digit between: 48 and:  55) ifTrue: [ ^ digit - 48 ].
	
	self error: digit asString, ' is not a valid octal digit' 