parsing
parseReference
	
	refCount := refCount + 1.
	
	^ TomlReference tableKey: self parseTableKey
	