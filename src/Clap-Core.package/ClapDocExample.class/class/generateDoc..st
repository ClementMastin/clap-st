documentation
generateDoc: aWriter
	aWriter addToFile: self comment , OSPlatform current lineEnding.
	(ClapDocWriter new: aWriter file) generateDoc: self create