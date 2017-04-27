parsing - string
parseLiteralString

	(stream peekFor: $') ifTrue: [ 
		^ (stream peekFor: $') 
			ifTrue: [ self parseMultiLiteralString ] 
			ifFalse: [ '' ]
	].
	
	^ self parseSingleLiteralString 
	