tests - number
testHexadecimals

	| root result |
	
	root := self parse: '
		# hexadecimal with prefix `0x`
		hex1 = 0xDEADBEEF
		hex2 = 0xdeadbeef
		hex3 = 0xdead_beef	
	'.
	
	result := 16rDEADBEEF.
	
	self 
		assert: root at: #hex1 equals: result;
		assert: root at: #hex2 equals: result;
		assert: root at: #hex3 equals: result