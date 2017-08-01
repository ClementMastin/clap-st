helpers
assertDecriptionOfMethod: aMethod expected: aString 
	subject writeDescriptionForMethod: aMethod.
	stream contents should equal: aString