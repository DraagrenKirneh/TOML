tests - key
testKeyVariations

	| dct |
	
	dct := self parse: '
		key = "value"
		bare_key = "value"
		bare-key = "value"
		1234 = "value"

		"127.0.0.1" = "value"
		"character encoding" = "value"
		"ʎǝʞ" = "value"
		''key2\t'' = "value"
		''quoted "value"'' = "value"
		"\t" = "value"
	'.
	
	self 
	
		assert: dct size 					equals: 10;
		assert: dct values asSet size 	equals:  1;
			
		assert: dct at: #'key' 			equals: 'value';
		assert: dct at: #'key2\t' 		equals: 'value';
		assert: dct at: #'1234' 			equals: 'value';
		assert: dct at: #'ʎǝʞ' 			equals: 'value';
		assert: dct at: Symbol tab 		equals: 'value'.



