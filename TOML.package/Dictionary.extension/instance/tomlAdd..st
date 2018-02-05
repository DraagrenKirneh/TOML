*TOML
tomlAdd: anAssociation

	| dict |
	
	dict := self.
	anAssociation key allButLastDo: [ :part |
		dict := dict at: part ifAbsentPut: [ self species new ]
	].

	dict at: anAssociation key last put: anAssociation value
	
		