parsing - chrono
hasSpaceInOffsetDateTime

	^ (stream peekFor: $ ) and: [ 
		stream atEnd not and: [
			stream peek isDigit 
		]
	]