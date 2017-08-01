helpers
assertMethodWithGoodComment: aMethod expected: expected
	subject writeTitleForMethod: aMethod.
	stream contents should equal: expected