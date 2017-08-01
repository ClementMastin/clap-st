tests
testGenerateDoc
	| expected writer |
	expected := '## "A simple command"' , OSPlatform current lineEnding.
	writer := ClapDocWriter new: '' file.
	writer generateDocumentationForMethod: ClapExamples simpleCommand.
	expected := expected , '```' , OSPlatform current lineEnding , writer stream contents , '```' , OSPlatform current lineEnding.
	subject generateDocumentationForMethod: method.
	subject file contents should equal: expected