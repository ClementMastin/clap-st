doc
generateCode: args of: aName
	| s |
	s := ''.
	args
		do: [ :a | 
			s := s , a canonicalName , ':= ' , self addArg , 'withName: ' , a canonicalName , '.'
				, OSPlatform current lineEnding.
			s := s , aName , ' ' , self addCode ,  a canonicalName , '.'
				, OSPlatform current lineEnding ].
	^ s