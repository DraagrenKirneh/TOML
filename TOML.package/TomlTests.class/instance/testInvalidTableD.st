errors
testInvalidTableD

	self assertError: Error parsing: '
		# DO NOT DO THIS EITHER

		[a]
		b = 1

		[a.b]
		c = 2
	'.