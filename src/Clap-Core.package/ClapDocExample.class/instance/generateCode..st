doc
generateCode: anExample
	self
		addToFile:
			anExample canonicalName , ':= ClapCommand withName: ' , anExample canonical , '.'
				, OSPlatform current lineEnding.
	self addPos: anExample positionals of: anExample canonicalName