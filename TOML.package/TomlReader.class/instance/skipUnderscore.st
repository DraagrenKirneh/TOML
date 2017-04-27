skipping
skipUnderscore

	( stream peekFor: $_ ) ifTrue: [ 
		stream peek isDigit ifFalse: [ 
			self error: 'Digit expected'	
		]	
	]