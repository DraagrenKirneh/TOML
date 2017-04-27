resolving
resolveReferencesIn: aCollection

	refCount isZero ifTrue: [ ^ self ].

	aCollection keysAndValuesDo: [ :key :value |	
		value isCollection 
			ifTrue: [ self resolveReferencesIn: value ]
			ifFalse: [ 
				value class == TomlReference ifTrue: [ 
					self resolve: value in: aCollection at: key.
				]
			].
		refCount isZero ifTrue: [ ^ self ].	
	]