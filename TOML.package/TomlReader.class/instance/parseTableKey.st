parsing - key & value
parseTableKey

	| nested |
	
	nested := OrderedCollection with: self parseKey.

	[ self skipWhitespace. stream peekFor: $. ] whileTrue: [ 
		nested add: self parseKey
	].
	
	^ nested
	