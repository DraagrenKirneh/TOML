tests - number
testOctals

	| root |
	
	root := self parse: '
		# octal with prefix `0o`
		oct1 = 0o01234567
		oct2 = 0o755 # useful for Unix file permissions
	'.

	self 
		assert: root at: #oct1 equals: 8r01234567;
		assert: root at: #oct2 equals: 8r755