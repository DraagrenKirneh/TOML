parsing
parseTable

	| tableKey |

	(stream peekFor: $[) ifTrue: [ 
		^ self parseArrayOfTables 
	].

	tableKey := self parseTableKey.

	self 
		expectRightBracket;
		createTable: tableKey