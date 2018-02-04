parsing - string
parseMultiLiteralString: aNumber
	
	| count |
	
	count := 0.
	self skipLinebreak.
	stream do: [ :char |
		char = $' ifTrue: [ 
			count = aNumber
				ifTrue: [ 
					[ stream peekFor: $' ] whileTrue: [ buffer nextPut: $' ].
					^ self transferBuffer 
				]
				ifFalse: [ count := count + 1 ]	
		] 
		ifFalse: [ 
			count > 0 ifTrue: [ buffer next: count put: $'. count := 0 ].
			buffer nextPut: char.
		]
					
	].
	
	self unexpectedEnding
	