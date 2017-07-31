doc
addCommands: args of: aName
	args do: [ :a | self generateCode: a ]