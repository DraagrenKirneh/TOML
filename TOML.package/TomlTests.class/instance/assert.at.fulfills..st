asserting
assert: aDictionary at: aStringKey fulfills: aBlock
	
	| item |
	
	item := aDictionary at: aStringKey.
	
	self assert: (aBlock value: item)