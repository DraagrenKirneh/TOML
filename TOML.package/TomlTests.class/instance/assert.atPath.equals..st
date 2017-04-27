asserting
assert: aDictionary atPath: aTableKey equals: anObject

	| item |
	
	item := aDictionary.
	aTableKey do: [ :keyPart | 
		item := item at: keyPart
	].

	self assert: item equals: anObject 