parsing - string
parseUnicode: numberOfBytes

	| value |
	
	value := self parseHexDigit.
	
	2 to: numberOfBytes do: [ :ix |
		value := (value << 4) + self parseHexDigit 
	].

	^ Character value: value