tests
testArray

	| dct |
	
	dct := self parse: '
		[array]
		key1 = [ 1, 2, 3 ]
		key2 = [ "red", "yellow", "green" ]
		key3 = [ [ 1, 2 ], [3, 4, 5] ]
		key4 = [ [ 1, 2 ], ["a", "b", "c"] ] # this is ok
		key5 = [ 
			1, 2, 3	
		]
		key6 = [ 
			1,
			2, #this is ok	
		]
		key7 = [ 
			#bar	 
		]
	'.
	
	dct := dct at: #array.
	
	self 
		assert: dct size equals: 7;
		assert: dct at: #key1 arrayEquals: { 1 . 2. 3 };
		assert: dct at: #key2 arrayEquals: { 'red' . 'yellow' . 'green' };
		assert: dct at: #key3 arrayEquals: { { 1 . 2 }  . { 3 . 4 . 5 } } ;
		assert: dct at: #key4 arrayEquals: { { 1 . 2 } . { 'a' . 'b' . 'c' } };
		assert: dct at: #key5 arrayEquals: { 1 . 2 . 3 };
		assert: dct at: #key6 arrayEquals: { 1 . 2 };
		assert: dct at: #key7 arrayEquals: { }
	
