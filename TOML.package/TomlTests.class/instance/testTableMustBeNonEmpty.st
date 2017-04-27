errors
testTableMustBeNonEmpty

	self 
		assertError: Error parsing: '[]';
		assertError: Error parsing: '[a.]';
		assertError: Error parsing: '[a..b]';
		assertError: Error parsing: '[.b]';
		assertError: Error parsing: '[.]'