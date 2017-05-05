parsing - string
parseMultiString

	| count backslash |
	
	count := 0.
	backslash := false.
	self skipLinebreak.	
	stream do: [ :char |
		(char = $\ and: [ backslash not ]) ifTrue: [ 
			backslash := true 
		] ifFalse: [ 
			backslash ifTrue: [ 
				backslash := false.
				self multilineBackslash: char. 
			] ifFalse: [ 
				char = $" ifTrue: [ 
					(count := count + 1) > 2 ifTrue: [ ^ self transferBuffer ] 
				] ifFalse: [ 
					count > 0 ifTrue: [ buffer next: count put: $". count := 0 ].
					buffer nextPut: char.
				]
			]
		]		
	].

	self unexpectedEnding