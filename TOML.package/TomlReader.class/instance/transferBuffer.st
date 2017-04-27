private - buffer
transferBuffer

	| string |
	
	string := buffer contents.
	buffer resetToStart.
	
	^ string