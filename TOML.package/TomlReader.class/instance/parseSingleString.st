parsing - string
parseSingleString

	| backslash |
		
	backslash := false.
	stream do: [ :char |
		(self checkLinebreak: char) ifTrue: [ self error: 'newline in string!' ].	
				
		(char = $\ and: [ backslash not ])
			ifTrue: [ backslash := true ]
			ifFalse: [  
				backslash ifTrue: [ 
					backslash := false.
					self backslash: char
				]
				ifFalse: [ 
					char = $" ifTrue: [ ^ self transferBuffer ].
					buffer nextPut: char 
				].
		]
	].
	
	self unexpectedEnding