doc
addPos: args of: aString
	self addToFile: (ClapPositionalCodeGenerator generateCode: args of: aString)