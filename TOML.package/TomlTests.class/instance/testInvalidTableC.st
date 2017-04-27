errors
testInvalidTableC

	self assertError: Error parsing: '
		# DO NOT DO THIS

		[a]
		b = 1

		[a]
		c = 2
	'.