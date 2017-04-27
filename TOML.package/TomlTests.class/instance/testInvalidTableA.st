errors
testInvalidTableA

	self assertError: Error parsing: '
		# INVALID TOML DOC
		fruit = []

		[[fruit]] # Not allowed
	'.