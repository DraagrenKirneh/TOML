initialization
initialize

	super initialize.
	
	current := root := Dictionary new.
			
	buffer := (String new: 100) writeStream.
	newline := String cr.