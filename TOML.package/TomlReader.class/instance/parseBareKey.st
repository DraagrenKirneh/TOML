parsing - key & value
parseBareKey
		
	stream do: [ :each |
	(each isAlphaNumeric or: [ each = $_ or: [ each = $- ] ]) 
		ifTrue: [ buffer nextPut: each	] 
		ifFalse: [ 
			stream skip: -1.
			buffer isEmpty ifTrue: [ self invalidKey ].
				
			^ self transferBuffer
		]		
	].

	self unexpectedEnding