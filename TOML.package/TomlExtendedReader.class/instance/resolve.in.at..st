resolving
resolve: aReference in: aCollection at: aKey

	| realValue seen |
	
	seen := OrderedCollection new.
	realValue := self lookupValueAt: aReference tableKey excluding: seen.
	
	aCollection at: aKey put: realValue.
	refCount := refCount - 1