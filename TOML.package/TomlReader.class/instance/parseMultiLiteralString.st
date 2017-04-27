parsing - string
parseMultiLiteralString
	
	| count |
	
	count := 0.
	self skipLinebreak.
	stream do: [ :char |
		char = $' ifTrue: [ 
			count < 2 
				ifFalse: [ ^ self transferBuffer ]
				ifTrue: [ count := count + 1 ]	
		] 
		ifFalse: [ 
			count > 0 ifTrue: [ buffer next: count put: $'. count := 0 ].
			buffer nextPut: char.
		]
					
	].
	
	self unexpectedEnding
	