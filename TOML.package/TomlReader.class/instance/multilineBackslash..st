parsing - string
multilineBackslash: aChar 
	
	aChar = Character lf ifTrue: [ ^ self skipWhitespace ].
	aChar = Character cr ifTrue: [ stream peekFor: Character lf. ^ self skipWhitespace ].
	
	^ self backslash: aChar