parsing
parse

	super parse.

	self resolveReferencesIn: root.
	
	^ root