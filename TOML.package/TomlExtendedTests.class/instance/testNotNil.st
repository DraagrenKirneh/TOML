errors
testNotNil

	self 
	
		assertErrorParsing: 'a = n';
		assertErrorParsing: 'a = ni';
		assertErrorParsing: 'a = nix';
		assertErrorParsing: 'a = null'.
	