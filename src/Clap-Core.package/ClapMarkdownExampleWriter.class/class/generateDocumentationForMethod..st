documentation
generateDocumentationForMethod: aWriter
	aWriter nextPutAll: self comment , OSPlatform current lineEnding.
	(ClapDocWriter new: aWriter writeStream) generateDocumentationForMethod: self create