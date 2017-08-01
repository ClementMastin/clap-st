doc
addFlags: args of: aString
	self nextPutAll: (ClapFlagCodeGenerator generateCode: args of: aString )