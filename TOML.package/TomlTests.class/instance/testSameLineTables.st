tests - table
testSameLineTables
	| root |
	
	root := self parse: '[a] a = 5 [b] b = 7'.
	
	self 
		assert: root size equals: 2;
		assert: (root at: 'a') at: 'a' equals: 5;
		assert: (root at: 'b') at: 'b' equals: 7