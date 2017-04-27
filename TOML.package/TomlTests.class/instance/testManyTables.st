tests - table
testManyTables

	| dict |
	
	dict := self parse: '
		[a]
		a = 1
		[b]
		a = 2
		[b.c.d.e.f.g]
		a = 3
		[c]
		a = 4
		[c.d]
		a = 5
	'.
	
	self 
		assert: dict atPath: #(a a) equals: 1; 
		assert: dict atPath: #(b a) equals: 2;
		assert: dict atPath: #(b c d e f g a) equals: 3;
		assert: dict atPath: #(c a) equals: 4; 
		assert: dict atPath: #(c d a) equals: 5
		
	