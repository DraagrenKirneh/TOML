tests
testDeepReference

	| dict |
	
	dict := self parse: '
		e = 41
		"b ... " = @''c\n\//''
		''c\n\//'' = @d
		d = @e
		a = @"b ... "
	'.
	
	self assert: dict values asSet asArray equals: #(41)
