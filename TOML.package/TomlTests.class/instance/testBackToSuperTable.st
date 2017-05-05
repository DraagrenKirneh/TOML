tests - table
testBackToSuperTable
	
	| dict |
	
	dict := self parse: '[a.b] c = 1 [a] d = 2 [a.c] e = 3'.
	
	self 
		assert: dict atPath: #(a b c) equals: 1;
		assert: dict atPath: #(a d)   equals: 2;
		assert: dict atPath: #(a c e) equals: 3.
		
	self assertErrorParsing: '[a.b] c = 1 [a] d = 2 [a] e = 3'
	