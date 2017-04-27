errors
testCyclicReference

	self assertErrorParsing: '
		a = @a
	'.

	self assertErrorParsing: '
		a = @b 
		b = @a
	'.
	
	self assertErrorParsing: '
		a = @b 
		b = @c
		c = @a
	'.

	
	
	