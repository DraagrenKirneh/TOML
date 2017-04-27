tests - number
testFloat

	| dict |
	
	dict := self parse: '
		# fractional
		flt1 = +1.0
		flt2 = 3.1415
		flt3 = -0.01

		# exponent
		flt4 = 5e+22
		flt5 = 1e6
		flt6 = 2E-2

		# both
		flt7 = 6.626e-34
		
		#underscores
		flt8 = 9_224_617.445_991_228_313
		flt9 = 1e1_000
	'.
	
	self 
	
		assert: dict at: 'flt1' equals: 1.0;
		assert: dict at: 'flt2' equals: 3.1415;
		assert: dict at: 'flt3' equals: -0.01;
		
		assert: dict at: 'flt4' equals: 5.0e22;
		assert: dict at: 'flt5' equals: 1e6;
		assert: dict at: 'flt6' equals: 0.02;
		
		assert: dict at: 'flt7' equals: 6.626e-34;
		
		assert: dict at: 'flt8' equals: 9224617.445991228313;
		assert: dict at: 'flt9' equals: 1.0e1000
		