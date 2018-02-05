tests
testExtendedLiteralIts

	| root text input |
	
	text := ' It''s '.
	input := String streamContents: [ :stream |
		stream 
			<< 'text = ';
			next: 3 put: $';
			<< ' It''s ';
			next: 3 put: $'			
	].

	root := self parse: input.
	
	self assert: root at: #text equals: text.