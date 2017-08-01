doc
addPos: args of: aString
	self nextPutAll: (ClapPositionalCodeGenerator generateCode: args of: aString)