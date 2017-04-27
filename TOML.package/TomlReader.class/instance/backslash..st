parsing - string
backslash: aChar

	aChar = $n ifTrue: [ ^ self intoBuffer: newline ].
	aChar = $" ifTrue: [ ^ self intoBuffer: $" ].
	aChar = $\ ifTrue: [ ^ self intoBuffer: $\ ].
	aChar = $t ifTrue: [ ^ self intoBuffer: Character tab ].
	aChar = $u ifTrue: [ ^ self intoBuffer: (self parseUnicode: 4) ].
	aChar = $U ifTrue: [ ^ self intoBuffer: (self parseUnicode: 8) ].
	aChar = $f ifTrue: [ ^ self intoBuffer: (Character value: 12) ].
	aChar = $r ifTrue: [ ^ self "nop"].
	
	aChar = Character lf ifTrue: [ ^ self ].
	aChar = Character cr ifTrue: [ stream peekFor: Character lf. ^ self ].
	
	self error: '{' , aChar asString , '} is not a supported escaped character'