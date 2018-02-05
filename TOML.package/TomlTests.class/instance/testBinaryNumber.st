tests - number
testBinaryNumber

	| root |
	
	root := self parse: '
		# binary with prefix `0b`
		bin1 = 0b11010110
	'.
	
	self assert: root at: #bin1 equals: 2r11010110

	