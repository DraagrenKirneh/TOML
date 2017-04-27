tests
testBasicReference2

	| dict |
	
	dict := self parse: '
		[a.b.c.d]
		e = 21
		
		[x]
		a = @a.b.c.d
		b = @a.b.c.d.e
		x = @x 
	'.
	
	self 
		assert: (dict at: 'x') at: 'x' equals: (dict at: 'x');
		assert: (dict at: 'x') at: 'b' equals: 21