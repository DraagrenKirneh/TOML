tests - number
testFloatLiterals

	| root blk |
	
	root := self parse: '
		# infinity
		sf1 = inf  # positive infinity
		sf2 = +inf # positive infinity
		sf3 = -inf # negative infinity

		# not a number
		sf4 = nan  # actual sNaN/qNaN encoding is implementation specific
		sf5 = +nan # same as `nan`
		sf6 = -nan # valid, actual encoding is implementation specific
	'.

	blk := [ :f | f isNaN ].
	
	self 
		assert: root at: #sf1 equals: Float infinity;
		assert: root at: #sf2 equals: Float infinity;
		assert: root at: #sf3 equals: Float infinity negated;		
		assert: root at: #sf4 fulfills: blk;
		assert: root at: #sf5 fulfills: blk;
		assert: root at: #sf6 fulfills: blk