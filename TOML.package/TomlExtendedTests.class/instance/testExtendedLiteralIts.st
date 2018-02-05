tests
testExtendedLiteralIts

	| root text input |
	
	text := ' It' , ($' asString repeat: 4), 's '.
	input := String streamContents: [ :stream |
		stream 
			<< 'text = ';
			next: 5 put: $';
			<< text;
			next: 5 put: $'			
	].

	root := self parse: input.
	
	self assert: root at: #text equals: text.