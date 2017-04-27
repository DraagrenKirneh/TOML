parsing - numerical
parseExponent
	| number negated |
	 
	
	negated := stream peekFor: $-.
	negated ifFalse: [ stream peekFor: $+ ].
	
	number := self parseInteger.
	negated ifTrue: [ number := number negated ].
	
	^ 10 raisedTo: number