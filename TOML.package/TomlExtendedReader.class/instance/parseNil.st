parsing
parseNil

	self 
		expectChar: $i;
		expectChar: $l.
		
	^ nil