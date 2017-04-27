parsing
tokenish: aCharacter

	aCharacter = $@ ifTrue: [ ^ self parseReference ].
	aCharacter = $n ifTrue: [ ^ self parseNil ].
	
	
	^ super tokenish: aCharacter