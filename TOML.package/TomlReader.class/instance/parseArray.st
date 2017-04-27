parsing
parseArray

	| col |
	
	col := OrderedCollection new.
	
	[ 
		self skipWhitespaceAndComments.
		(stream peekFor: $]) ifTrue: [ ^ col ].
	
		col add: self parseValue.
		
		self skipWhitespaceAndComments.		
		(stream peekFor: $]) ifTrue: [ ^ col ].
	
		stream peekFor: $,
	] whileTrue.

	self unexpectedEnding

