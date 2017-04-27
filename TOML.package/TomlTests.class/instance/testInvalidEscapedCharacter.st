errors
testInvalidEscapedCharacter

	self assertErrorParsing: 'text = "\x"'