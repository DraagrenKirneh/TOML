parsing - numerical
parseNumber: integerPart

	| number |
	
	number := integerPart.
	
	(stream peekFor: $.) ifTrue: [ 
		number := number + self parseFraction
	].
	((stream peekFor: $e) or: [ (stream peekFor: $E) ]) ifTrue: [ 
		number := number asFloat * self parseExponent
	].
	
	^ number