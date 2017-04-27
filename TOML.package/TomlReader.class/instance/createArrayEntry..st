private - table
createArrayEntry: aTableKey

	| tableParent |
	
	tableParent := self tableParentAt: aTableKey.
	current := Dictionary new.
	 
	tableParent at: aTableKey last 
		ifPresent: [ :col | 
			col isArray 
				ifTrue:  [ self duplicateKey ] 
				ifFalse: [ col add: current  ]
		]
	 	ifAbsentPut: [ OrderedCollection with: current ]
	
	
	