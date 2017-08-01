tests-title
testGenerateDescriptionForNoComment
	self
		assertDecriptionOfMethod: ClapExamplesForTesting class >> #exampleWithNoComment
		expected: self newLine