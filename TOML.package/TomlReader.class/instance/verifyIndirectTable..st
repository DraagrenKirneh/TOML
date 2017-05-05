private - table
verifyIndirectTable: aDictionary

	(indirect includes: aDictionary) ifFalse: [ self duplicateKey ].
	indirect remove: aDictionary