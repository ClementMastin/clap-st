tests
testGenerateTitle
	| expected |
	expected := '## "A simple command"' , OSPlatform current lineEnding.
	subject writeTitleForMethod: method.
	stream contents should equal: expected