documentation
generateExamples
	ClapDocExample allSubclasses do: [ :sc | sc generateDoc.Stdio stdout lf ]