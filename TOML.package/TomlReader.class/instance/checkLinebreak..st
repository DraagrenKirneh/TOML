expecting
checkLinebreak: aChar
	
	| value |
	
	value := aChar asInteger.	
	value = 10 ifTrue: [ ^ true ].
	value = 13 ifTrue: [ stream peekFor: Character lf. ^ true ].
	
	^ false 