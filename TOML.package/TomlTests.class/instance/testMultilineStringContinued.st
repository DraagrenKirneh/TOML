tests - string
testMultilineStringContinued

	| root dct value |
	
	root := self parse: '
	[string.multiline.continued]

	# The following strings are byte-for-byte equivalent:
	key1 = "The quick brown fox jumps over the lazy dog."

	key2 = """
The quick brown \


  fox jumps over \
    the lazy dog."""

	key3 = """\
       The quick brown \
       fox jumps over \
       the lazy dog.\
       """'.

	dct := ((root at: 'string') at: 'multiline') at: 'continued'.
	value := 'The quick brown fox jumps over the lazy dog.'.
	
	self 
		assert: dct size 			equals: 3;
		assert: dct at: 'key1' 	equals: value;
		assert: dct at: 'key2'	equals: value;
		assert: dct at: 'key3' 	equals: value
	
	
	
