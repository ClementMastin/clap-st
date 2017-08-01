doc
generateCode: anExample
	self
		nextPutAll:
			anExample canonicalName , ':= ClapCommand withName: ' , anExample canonicalName , '.'
				, OSPlatform current lineEnding.
	self addPos: anExample positionals of: anExample canonicalName.
	self addFlags: anExample flags of: anExample canonicalName.
	self addCommands: anExample subcommands of: anExample canonicalName