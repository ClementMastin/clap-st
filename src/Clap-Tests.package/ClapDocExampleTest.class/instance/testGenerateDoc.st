tests
testGenerateDoc
	| expected writer |
	expected := '## "A simple command"' , OSPlatform current lineEnding.
	writer := ClapDocWriter new: '' writeStream.
	writer generateDoc: ClapExamples simpleCommand.
	expected := expected , '```' , OSPlatform current lineEnding , writer stream contents , '```' , OSPlatform current lineEnding.
	subject generateDoc: method.
	subject file contents should equal: expected