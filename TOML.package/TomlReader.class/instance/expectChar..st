expecting
expectChar: aCharacter

	self skipWhitespace.
	
	stream next = aCharacter ifFalse: [ 
		self error: 'Expected the next character to be a ', aCharacter asString 
	]