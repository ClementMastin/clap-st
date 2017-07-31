doc
addFlags: args of: aString
	self addToFile: (ClapFlagCodeGenerator generateCode: args of: aString )