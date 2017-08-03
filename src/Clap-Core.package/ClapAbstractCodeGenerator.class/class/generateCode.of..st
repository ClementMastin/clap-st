doc
generateCode: args of: aName
	| s |
	s := ''.
	args
		do: [ :a | 
			s := s , (self generateCode: a).
			s := s , aName , self addCode , a canonicalName , '.' , OSPlatform current lineEnding ].
	^ s