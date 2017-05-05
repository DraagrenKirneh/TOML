initialization
initialize

	super initialize.
	
	current := root := self newDictionary.
	indirect := IdentitySet new.
	buffer := (String new: 100) writeStream.
	newline := String cr.