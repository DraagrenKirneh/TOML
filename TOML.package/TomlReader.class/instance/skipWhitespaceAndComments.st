skipping
skipWhitespaceAndComments

	[ 
		
		self skipWhitespace.
		(stream peekFor: $#) ifFalse: [ ^ self ].
		self skipComment.
	
	stream atEnd ] whileFalse.
