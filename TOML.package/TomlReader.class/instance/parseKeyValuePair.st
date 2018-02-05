parsing - key & value
parseKeyValuePair

	| key |
	
	key := self parseTableKey.
	
	self expectAssignment.
		
	^ key -> self parseValue