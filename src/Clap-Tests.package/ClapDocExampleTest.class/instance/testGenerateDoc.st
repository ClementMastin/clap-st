tests
testGenerateDoc
	| expected writer |
	expected := '"A simple command"' , OSPlatform current lineEnding.
	writer := ClapDocWriter new: '' writeStream.
	writer generateDoc: ClapDocExample simpleCommand.
	expected := expected , writer stream contents , '____' , OSPlatform current lineEnding.
	subject generateDoc: method.
	subject file contents should equal: expected