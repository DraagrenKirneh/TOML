tests
testInlineTable

	| root |
	
	root := self parse: '
		name = { first = "Tom", last = "Preston-Werner" }
		point = { x = 1, y = 2 }
	'.
	
	self 
	
		assert: root atPath: #(name first) equals: 'Tom';
		assert: root atPath: #(name last)  equals: 'Preston-Werner';
	
		assert: root atPath: #(point x)  equals: 1;
		assert: root atPath: #(point y)  equals: 2;
		
		assert: root equals: ( 
			self parse: '
			[name]
			first = "Tom"
			last = "Preston-Werner"

			[point]
			x = 1
			y = 2'
		)
		
	