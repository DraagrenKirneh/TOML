skipping
skipLinebreak

	(self checkLinebreak: stream next)
		ifFalse: [ stream skip: -1 ]