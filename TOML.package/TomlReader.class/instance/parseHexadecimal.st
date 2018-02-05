parsing - numerical
parseHexadecimal
	
	| hex |
	
	hex := self parseHexDigit.
	
	[ (stream peekFor: $_). stream peek isAlphaNumeric ] whileTrue: [ 
		hex := (hex << 4) | self parseHexDigit
	].

	^ hex