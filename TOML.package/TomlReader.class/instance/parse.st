parsing
parse

	[ self skipWhitespaceAndComments. stream atEnd ] whileFalse: [ 
		(stream peekFor: $[)
			ifTrue: [ self parseTable ]
			ifFalse: [ current add: self parseKeyValuePair ]
	].
	
	^ root