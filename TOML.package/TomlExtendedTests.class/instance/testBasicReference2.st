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
		assert: dict atPath: #(x x) equals: (dict at: #x);
		assert: dict atPath: #(x b) equals: 21