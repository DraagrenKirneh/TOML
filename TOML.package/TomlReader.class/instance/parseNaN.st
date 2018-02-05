parsing - types
parseNaN

	(stream next: 2) = 'an' ifFalse: [ 
		self error: 'expected: an'.	
	].
	
	stream next isSeparator ifFalse: [ 
		self error: 'expected separator after boolean literal'	
	].

	^ Float nan