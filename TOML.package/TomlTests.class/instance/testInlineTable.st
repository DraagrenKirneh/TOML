tests
testInlineTable

	| root |
	
	root := self parse: '
		name = { first = "Tom", last = "Preston-Werner" }
		point = { x = 1, y = 2 }
	'.
	
	self 
	
		assert: (root at: 'name') at: 'first' equals: 'Tom';
		assert: (root at: 'name') at: 'last' equals: 'Preston-Werner';
	
		assert: (root at: 'point') at: 'x' equals: 1;
		assert: (root at: 'point') at: 'y' equals: 2;
		
		assert: root equals: ( 
			self parse: '
			[name]
			first = "Tom"
			last = "Preston-Werner"

			[point]
			x = 1
			y = 2'
		)
		
	