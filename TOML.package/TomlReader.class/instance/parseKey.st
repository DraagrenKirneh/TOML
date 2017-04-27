parsing - key & value
parseKey
		
	self skipWhitespace.
	
	(stream peekFor: $") ifTrue: [ ^ self parseSingleString ].
	(stream peekFor: $') ifTrue: [ ^ self parseSingleLiteralString ].
		
	^ self parseBareKey	
		
"	^ self transferBuffer"