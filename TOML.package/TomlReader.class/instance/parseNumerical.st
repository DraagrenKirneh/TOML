parsing - numerical
parseNumerical

	| number |
	
	(stream peekFor: $0) ifTrue: [ 
		(stream peekFor: $x) ifTrue: [ ^ self parseHexadecimal ].
		(stream peekFor: $o) ifTrue: [ ^ self parseOctalNumber ].
		(stream peekFor: $b) ifTrue: [ ^ self parseBinaryNumber ]
	].

	number := self parseInteger.
	
	(stream peekFor: $-) ifTrue: [ 
		^ self parseDate: number	
	].
	(stream peekFor: $:) ifTrue: [ 
		^ self parseTime: number	
	].

	^ self parseNumber: number
	
	