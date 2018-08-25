asserting
assert: aDictionary atPath: aCollection arrayEquals: anObject

	self 
		assert: (aDictionary tomlAtPath: aCollection) asArray 
		equals: anObject 