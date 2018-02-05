parsing - types
parseInfinity

	(stream next: 2) = 'nf' ifFalse: [ 
		self error: 'expected: nf'.	
	].
	
	stream next isSeparator ifFalse: [ 
		self error: 'expected separator after boolean literal'	
	].

	^ Float infinity