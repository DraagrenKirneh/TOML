parsing - key & value
parseTableKey

	| nested |
	
	nested := OrderedCollection with: self parseKey.
	
	[ stream peekFor: $. ] whileTrue: [ 
		nested add: self parseKey
	].
	
	^ nested
	