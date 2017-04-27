tests - string
testMultiLiteralString

	| dict s1 s2 |

	s1 := 'I [dw]on''t need \d{2} apples'.
	s2 := 'The first newline is
trimmed in raw strings.
   	All other whitespace
   	is preserved.'.
	
	dict := self parse: '
	regex2 = ''''''I [dw]on''t need \d{2} apples''''''
	lines  = ''''''
The first newline is
trimmed in raw strings.
   	All other whitespace
   	is preserved.'''''''.

	self 
		assert: dict size equals: 2;
		assert: dict at: 'regex2' equals: s1;
		assert: dict at: 'lines' equals: s2
	
	
	
