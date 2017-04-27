parsing - string
handleBackslash: aChar multiline: aBoolean

	aChar = $n ifTrue: [ ^ self intoBuffer: newline ].
	aChar = $" ifTrue: [ ^ self intoBuffer: $" ].
	aChar = $\ ifTrue: [ ^ self intoBuffer: $\ ].
	aChar = $t ifTrue: [ ^ self intoBuffer: Character tab ].
	aChar = $u ifTrue: [ ^ self intoBuffer: (self parseUnicode: 4) ].
	aChar = $U ifTrue: [ ^ self intoBuffer: (self parseUnicode: 8) ].
	aChar = $f ifTrue: [ ^ self intoBuffer: (Character value: 12) ].
	aChar = $r ifTrue: [ ^ self "nop"].
	
	aChar = Character lf ifTrue: [ aBoolean ifTrue: [ self skipWhitespace ]. ^ self ].
	aChar = Character cr ifTrue: [ stream peekFor: Character lf. aBoolean ifTrue: [ self skipWhitespace ]. ^ self ].
	
	self error: 'The character {' , aChar asString , '} is not supported by backslash'