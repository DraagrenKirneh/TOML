asserting
assert: aDictionary atPath: aTableKey equals: anObject

	| item |
	
	item := aDictionary tomlAtPath: aTableKey.

	self assert: item equals: anObject 