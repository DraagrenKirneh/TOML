parsing
parseInlineTable

	| dict |
	
	dict := Dictionary new.
	
	[ 
		self skipWhitespaceAndComments.
		(stream peekFor: $}) ifTrue: [ ^ dict ].
	
		dict add: self parseKeyValuePair.
		
		self skipWhitespaceAndComments.		
		(stream peekFor: $}) ifTrue: [ ^ dict ].
	
		stream peekFor: $,
		
	] whileTrue.

	self unexpectedEnding

	
	