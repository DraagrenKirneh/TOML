parsing - numerical
parseInteger

	| number next |
	
	number := 0.
	
	[ stream atEnd not and: [ (next := stream next) isDigit ] ] whileTrue: [
		number := 10 * number + next digitValue.
		self skipUnderscore
	].
			
	next isDigit ifFalse: [ stream skip: -1 ].
	
	^ number