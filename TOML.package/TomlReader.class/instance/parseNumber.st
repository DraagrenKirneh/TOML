parsing - numerical
parseNumber

	stream peek isLetter ifTrue: [ | token |
		token := stream next.
		token = $i ifTrue: [ ^ self parseInfinity ].
		token = $n ifTrue: [ ^ self parseNaN ].
		self error: 'Unknown letter in number parsing'.
	].

	^ self parseNumber: self parseInteger