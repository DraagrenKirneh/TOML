tests - string
testBasicString

	| dict |
	
	dict := self parse: 'str = "I''m a string. \"You can quote me\". Name\tJos\u00E9\nLocation\tSF."'.
	
	self assert: dict at: 'str' equals: 'I''m a string. "You can quote me". Name	José' , String cr , 'Location	SF.'