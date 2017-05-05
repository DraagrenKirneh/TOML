*TOML
tomlAtPath: aCollection

	| obj |
	
	obj := self.
	aCollection do: [ :part |
		obj := obj at: part	
	].

	^ obj 