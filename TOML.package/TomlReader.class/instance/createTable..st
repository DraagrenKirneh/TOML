private - table
createTable: aTableKey

	| tableParent |
	
	tableParent := self tableParentAt: aTableKey.

	tableParent 
		at: aTableKey last 
		ifPresent: [ :table | self duplicateKey ]
		ifAbsentPut: [ 	current := self newDictionary ]

	
	
	