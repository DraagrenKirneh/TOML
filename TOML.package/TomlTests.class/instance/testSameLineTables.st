tests - table
testSameLineTables
	| root |
	
	root := self parse: '[a] a = 5 [b] b = 7'.
	
	self 
		assert: root size equals: 2;
		assert: root atPath: #(a a) equals: 5;
		assert: root atPath: #(b b) equals: 7