skipping
skipComment

	[ stream atEnd ] whileFalse: [ 
		(self checkLinebreak: stream next) ifTrue: [ ^ self ]
	]
