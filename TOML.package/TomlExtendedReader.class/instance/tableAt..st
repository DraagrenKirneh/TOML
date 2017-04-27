resolving
tableAt: aTablekey

	| table |
	
	table := root.
	aTablekey allButLastDo: [ :keyPart |
		table := table at: keyPart ifAbsent: [ self error ].
		table isDictionary ifFalse: [ self error ].
	].

	^ table at: aTablekey last
