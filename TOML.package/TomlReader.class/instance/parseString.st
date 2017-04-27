parsing - string
parseString

	(stream peekFor: $") ifTrue: [ 
		^ (stream peekFor: $") ifTrue: [ self parseMultiString ] ifFalse: [ '' ]
	].
	
	^ self parseSingleString 