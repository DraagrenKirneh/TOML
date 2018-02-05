parsing
tokenish: aCharacter
	
	aCharacter = $+ ifTrue: [ ^ self parseNumber ].
	aCharacter = $- ifTrue: [ ^ self parseNumber negated ].			
	aCharacter = $" ifTrue: [ ^ self parseString ].
	aCharacter = $' ifTrue: [ ^ self parseLiteralString ].
	aCharacter = $f ifTrue: [ ^ self parseBoolean: false ].
	aCharacter = $t ifTrue: [ ^ self parseBoolean: true ].
	aCharacter = $i ifTrue: [ ^ self parseInfinity ].
	aCharacter = $n ifTrue: [ ^ self parseNaN ].
	aCharacter = $[ ifTrue: [ ^ self parseArray asArray ].
	aCharacter = ${ ifTrue: [ ^ self parseInlineTable ].
	
	
	
	