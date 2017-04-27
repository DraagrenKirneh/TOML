tests - number
testInteger

	| dict |
	
	dict := self parse: '
		int1 = +99
		int2 = 42
		int3 = 0
		int4 = -17
		int5 = 1_000
		int6 = 5_349_221
		int7 = 1_2_3_4_5     # VALID but discouraged
		int8 = +1_2_7_4_5 
		int9 = -1_2_3_7_5 
	'.
	
	self 
		assert: dict at: #int1 equals: 99;
		assert: dict at: #int2 equals: 42;
		assert: dict at: #int3 equals: 0;
		assert: dict at: #int4 equals: -17;
		assert: dict at: #int5 equals: 1000;
		assert: dict at: #int6 equals: 5349221;
		assert: dict at: #int7 equals: 12345;
		assert: dict at: #int8 equals: 12745;
		assert: dict at: #int9 equals: -12375
		
		