parsing - string
parseSingleLiteralString

	stream do: [ :each |
		(self checkLinebreak: each) ifTrue: [ self error: 'newline in string!' ].
		each = $' ifTrue: [ ^ self transferBuffer ].
		buffer nextPut: each
	].
	
	self unexpectedEnding	
	
	