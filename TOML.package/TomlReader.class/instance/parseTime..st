parsing - chrono
parseTime: hour

	| minute second nano |
	
	minute := self parseInteger.
	self expectColon.
	second := self parseInteger.
	
	nano := (stream peekFor: $.) 
		ifTrue: [ self parseInteger ]
		ifFalse: [ 0 ].
		
	^ Time hour: hour minute: minute second: second nano: nano
	