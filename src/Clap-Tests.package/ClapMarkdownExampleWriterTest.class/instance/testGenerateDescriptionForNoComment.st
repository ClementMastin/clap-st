tests-description
testGenerateDescriptionForNoComment
	self
		assertDecriptionOfMethod: ClapExamplesForTesting class >> #exampleWithNoComment
		expected: self newLine