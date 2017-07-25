documentation
generateExamples
	file open.
	ClapDocExample allSubclasses
		do: [ :sc | 
			sc generateDoc: self.
			self addToFile: '----' , OSPlatform current lineEnding  ].
	file close