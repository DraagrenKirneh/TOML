parsing - key & value
parseValue

	self skipWhitespace.
		
	stream peek isDigit ifTrue: [ ^ self parseNumerical ].
		
	^ self tokenish: stream next
		
	
	