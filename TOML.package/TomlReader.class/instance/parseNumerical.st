parsing - numerical
parseNumerical

	| number |
	
	number := self parseInteger.
	
	(stream peekFor: $-) ifTrue: [ 
		^ self parseDate: number	
	].
	(stream peekFor: $:) ifTrue: [ 
		^ self parseTime: number	
	].

	^ self parseNumber: number
	
	