parsing
parse

	[ self skipWhitespaceAndComments. stream atEnd ] whileFalse: [ 
		(stream peekFor: $[)
			ifTrue: [ self parseTable ]
			ifFalse: [ current tomlAdd: self parseKeyValuePair ]
	].
	
	^ root