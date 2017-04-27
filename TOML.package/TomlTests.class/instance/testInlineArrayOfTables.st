tests
testInlineArrayOfTables

	| root n |
	
	root := self parse: '
		points = [ 
			{ x = 1, y = 2, z = 3 },
         { x = 4, y = 5, z = 6 },
         { x = 7, y = 8, z = 9 } 
		]
	'.
	
	self assert: root size equals: 1.
	
	n := 0.
	(root at: 'points') do: [ :each |
		self 
			assert: each at: 'x' equals: (n := n + 1);
			assert: each at: 'y' equals: (n := n + 1);
			assert: each at: 'z' equals: (n := n + 1).
	]
	
	

