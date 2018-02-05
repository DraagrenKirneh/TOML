parsing
parseInlineTable

	| dict |
	
	dict := self newDictionary.
	
	[ 
		self skipWhitespaceAndComments.
		(stream peekFor: $}) ifTrue: [ ^ dict ].
	
		dict tomlAdd: self parseKeyValuePair.
		
		self skipWhitespaceAndComments.		
		(stream peekFor: $}) ifTrue: [ ^ dict ].
	
		stream peekFor: $,
		
	] whileTrue.

	self unexpectedEnding

	
	
