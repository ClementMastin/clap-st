doc
addCommands: args of: aName
	args
		do: [ :a | 
			self generateCode: a;
			nextPutAll: aName;
			nextPutAll: ' addSubcommand: ';
			nextPutAll: a canonicalName;
			nextPutAll: '.';
			writeNewLine  ]