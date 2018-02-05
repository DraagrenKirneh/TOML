parsing
tokenish: aCharacter

	aCharacter = $@ ifTrue: [ ^ self parseReference ].
	(aCharacter = $n and: [ stream peek = $i ]) ifTrue: [ ^ self parseNil ].
		
	^ super tokenish: aCharacter