tests - string
testMultilineString

	| root dct value|

	root := self parse: '
		[string.multiline]
		# The following strings are byte-for-byte equivalent:
		key1 = "One\nTwo"
		key2 = """One\nTwo"""
		key3 = """
One
Two"""
	'.
	
	dct := (root at: 'string') at: 'multiline'.
	value := 'One' , String cr , 'Two'.
	
	self 
		assert: dct at: 'key1' equals: value;
		assert: dct at: 'key2' equals: value;
		assert: dct at: 'key3' equals: value
		
		
