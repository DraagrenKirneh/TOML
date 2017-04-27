tests
testArrayOfTables

	| dct array |
	
	dct := self parse: '
		[[products]]
		name = "Hammer"
		sku = 738594937

		[[products]]
		#empty

		[[products]]
		name = "Nail"
		sku = 284758393
		color = "gray"
	'.
	
	self assert: dct size equals: 1.
	
	array := dct at: 'products'.
	
	self 
		assert: array size equals: 3;
		
		assert: (array at: 1) size equals: 2;
		assert: (array at: 2) isEmpty;
		assert: (array at: 3) size equals: 3;
		
		assert: (array at: 1) at: 'name' 	equals: 'Hammer';
		assert: (array at: 1) at: 'sku' 	equals: 738594937;
			
		assert: (array at: 3) at: 'name' 	equals: 'Nail';
		assert: (array at: 3) at: 'sku' 	equals: 284758393;
		assert: (array at: 3) at: 'color' equals: 'gray'	
			
	
	
	
	
