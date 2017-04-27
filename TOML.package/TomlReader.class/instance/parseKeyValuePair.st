parsing - key & value
parseKeyValuePair

	| key |
	
	key := self parseKey.
	
	self expectAssignment.
		
	^ key -> self parseValue