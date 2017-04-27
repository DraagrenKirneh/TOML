initialization
initialize

	super initialize.
	
	current := root := self newDictionary.
			
	buffer := (String new: 100) writeStream.
	newline := String cr.