tests
testClassCommentExample

	| config serverConfig |
	config := TomlReader parse: '
	[server]
	ip = "10.0.0.51"
	port = 4567
	'.

	serverConfig := config at: 'server'.
	
	self 
		assert: (serverConfig at: 'ip') equals: '10.0.0.51';
		assert: (serverConfig at: 'port') equals: 4567