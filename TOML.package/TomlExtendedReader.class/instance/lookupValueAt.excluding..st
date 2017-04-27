resolving
lookupValueAt: aTableKey excluding: aCollection

	| item |
	
	item := self tableAt: aTableKey.

	item class == TomlReference ifFalse: [ ^ item ].
	
	(aCollection includes: item) ifTrue: [ self errorCyclicLookup ].
	
	aCollection add: item.	

	^ self lookupValueAt: item tableKey excluding: aCollection