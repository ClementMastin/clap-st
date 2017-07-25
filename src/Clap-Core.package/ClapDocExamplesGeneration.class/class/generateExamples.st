documentation
generateExamples
	| writer |
	writer := ClapDocWriter new: (FileStream newFileNamed: 'examples.txt').
	ClapDocExample allSubclasses
		do: [ :sc | 
			sc generateDoc: writer. ].
		writer stream close