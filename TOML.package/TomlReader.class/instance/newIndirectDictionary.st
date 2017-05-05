private - table
newIndirectDictionary

	| dict |
	
	dict := self newDictionary.
	indirect add: dict.
	
	^ dict
	