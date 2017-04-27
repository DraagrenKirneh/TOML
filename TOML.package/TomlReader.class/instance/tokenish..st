parsing
tokenish: aCharacter
	
	aCharacter = $+ ifTrue: [ ^ self parseNumber ].
	aCharacter = $- ifTrue: [ ^ self parseNumber negated ].			
	aCharacter = $" ifTrue: [ ^ self parseString ].
	aCharacter = $' ifTrue: [ ^ self parseLiteralString ].
	aCharacter = $f ifTrue: [ ^ self parseBoolean: false ].
	aCharacter = $t ifTrue: [ ^ self parseBoolean: true ].
	aCharacter = $[ ifTrue: [ ^ self parseArray asArray ].
	aCharacter = ${ ifTrue: [ ^ self parseInlineTable ].
	
	
	
	