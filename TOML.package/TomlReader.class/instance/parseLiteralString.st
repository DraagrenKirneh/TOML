parsing - string
parseLiteralString

	(stream peekFor: $') ifTrue: [ 
		^ (stream peekFor: $') 
			ifTrue: [ self parseMultiLiteralString: 2 ] 
			ifFalse: [ '' ]
	].
	
	^ self parseSingleLiteralString 
	