private - table
createTable: aTableKey

	| tableParent |
	
	tableParent := self tableParentAt: aTableKey.

	tableParent 
		at: aTableKey last 
		ifPresent: [ :table | 
			self verifyIndirectTable: table.
			current := table 	
		]
		ifAbsentPut: [ 	current := self newDictionary ]

	
	
	