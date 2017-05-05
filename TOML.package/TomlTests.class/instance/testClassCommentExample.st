tests
testClassCommentExample

	| serverConfig |
	serverConfig := TomlReader parse: '
	flag = true
	[server]
	ip = "10.0.0.51"
	port = 4567
	'.
	
	self 
		assert: serverConfig at: #flag equals: true;
		assert: serverConfig atPath: #(server ip) equals: '10.0.0.51';
		assert: serverConfig atPath: #(server port) equals: 4567