tests-description
testGenerateDescriptionForEmptyComment
	self
		assertDecriptionOfMethod: ClapExamplesForTesting class >> #exampleWithEmptyComment
		expected: self newLine