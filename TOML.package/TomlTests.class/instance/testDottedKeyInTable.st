tests - table
testDottedKeyInTable
	| root |
	
	
	root := self parse: '
		[dog."tater.man"]
		type.name = "pug"		
	'.
	
	self assert: root atPath: { #dog . #'tater.man' . #type . #name } equals: 'pug'
	
	