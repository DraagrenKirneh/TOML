tests - key
testDottedKeys

	| dct |
	
	dct := self parse: '
		name = "Orange"
		physical.color = "orange"
		physical.shape = "round"
		site."google.com" = true
	'.
	
	self 	
		assert: dct size 			equals: 3;				
		assert: dct at: #name 	equals: 'Orange';
										
		assert: dct atPath: #(physical color)			equals: 'orange';
		assert: dct atPath: #(physical shape)			equals: 'round';
		assert: dct atPath: {#site . #'google.com' } 	equals: true


