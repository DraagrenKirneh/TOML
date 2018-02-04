parsing
parseLiteralString
	
	| count |
	
	count := 0.
	
	[ (stream peekFor: $') ] whileTrue: [ 
		count := count + 1.
	].

	count = 1 ifTrue: [ ^ '' ].

	^ count = 0 
		ifTrue: [ self parseSingleLiteralString ]
		ifFalse: [ self parseMultiLiteralString: count ]
		