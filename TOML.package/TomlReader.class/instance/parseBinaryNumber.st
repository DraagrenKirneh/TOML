parsing - numerical
parseBinaryNumber

	| binary |
	
	binary := self parseBinaryDigit.
	
	[ (stream peekFor: $_). stream peek isDigit ] whileTrue: [ 
		binary := (binary << 1) | self parseBinaryDigit
	].

	^ binary