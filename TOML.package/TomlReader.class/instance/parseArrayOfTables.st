parsing
parseArrayOfTables

	| tableKey |

	tableKey := self parseTableKey.

	self 
		expectRightBracket;
	 	expectRightBracket;
		createArrayEntry: tableKey