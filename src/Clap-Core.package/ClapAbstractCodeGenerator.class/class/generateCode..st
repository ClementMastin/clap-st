doc
generateCode: anArg
	| argName |
	argName := anArg canonicalName.
	^ argName , ' := ' , self addArg , 'withName: ' , argName , '.' , OSPlatform current lineEnding 