errors
testInvalidNumbers

	self 
	
		assertErrorParsing: 'x = 1__2';
		assertErrorParsing: 'x = _12';
		assertErrorParsing: 'x = +_12';
		assertErrorParsing: 'x = 12_';
		assertErrorParsing: 'x = 1e+';
		assertErrorParsing: 'x = ';
		assertErrorParsing: 'x = 0000__0'.