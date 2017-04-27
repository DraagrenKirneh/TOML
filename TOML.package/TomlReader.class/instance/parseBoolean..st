parsing - types
parseBoolean: aBoolean 

	| ending |
	
	ending := aBoolean ifTrue: [ 'rue' ] ifFalse: [ 'alse' ].

	(stream next: ending size) = ending ifFalse: [ 
		self error: 'expected: ', ending.	
	].
	
	stream next isSeparator ifFalse: [ 
		self error: 'expected separator after boolean literal'	
	].

	^ aBoolean 