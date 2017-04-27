tests - string
testLiteralString

	| root dct |

	root := self parse: '
		[string.literal]
		# What you see is what you get.
		winpath  = ''C:\Users\nodejs\templates''
		winpath2 = ''\\ServerX\admin$\system32\''
		quoted   = ''Tom "Dubs" Preston-Werner''
		regex    = ''<\i\c*\s*>''
	'.
	
	dct := (root at: 'string') at: 'literal'.
	
	self 
		assert: dct at: 'winpath' equals: 'C:\Users\nodejs\templates';
		assert: dct at: 'winpath2' equals: '\\ServerX\admin$\system32\';
		assert: dct at: 'quoted' equals: 'Tom "Dubs" Preston-Werner';
		assert: dct at: 'regex' equals: '<\i\c*\s*>'
		
		
