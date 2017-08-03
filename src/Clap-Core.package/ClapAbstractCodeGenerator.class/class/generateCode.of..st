doc
generateCode: args of: aName
	| s |
	s := ''.
	args
		do: [ :a | 
			s := s , (self generateCode: args).
			s := s , aName , self addCode , a canonicalName , '.' , OSPlatform current lineEnding ].
	^ s