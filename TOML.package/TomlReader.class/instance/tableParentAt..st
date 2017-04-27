private - table
tableParentAt: aTablekey

	| parent |

	aTablekey size = 1 ifTrue: [ ^ root ].
	
	parent := root.
	aTablekey allButLastDo: [ :keyPart |
		parent := parent at: keyPart ifAbsentPut: [ self newDictionary ].
		parent isDictionary ifFalse: [ parent := parent last ].
	].

	^ parent 	

	