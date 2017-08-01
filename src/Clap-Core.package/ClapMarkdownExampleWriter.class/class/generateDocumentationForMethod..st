documentation
generateDocumentationForMethod: aWriter
	aWriter nextPutAll: self comment , OSPlatform current lineEnding.
	(ClapDocWriter new: aWriter file) generateDocumentationForMethod: self create