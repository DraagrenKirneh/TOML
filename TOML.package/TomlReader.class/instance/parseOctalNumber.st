parsing - numerical
parseOctalNumber
	
	| octal |
	
	octal := self parseOctalDigit.
	
	[ (stream peekFor: $_). stream peek isDigit ] whileTrue: [ 
		octal := (octal << 3) | self parseOctalDigit
	].

	^ octal