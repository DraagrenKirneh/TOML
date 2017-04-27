tests - table
testxyzwTable

	| dct |
	
	dct := self parse: '[x.y.z.w]'.
	
	#('x' 'y' 'z' 'w') do: [ :key |	
		self assert: dct size equals: 1.
		dct := dct at: key.	
	].

	self assert: dct size equals: 0

