parsing - key & value
parseKey
		
	self skipWhitespace.
	
	(stream peekFor: $") ifTrue: [ ^ self parseSingleString asSymbol ].
	(stream peekFor: $') ifTrue: [ ^ self parseSingleLiteralString asSymbol ].
		
	^ self parseBareKey asSymbol	
		
"	^ self transferBuffer"