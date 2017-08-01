tests-title
testGenerateDescriptionForEmptyComment
	self
		assertDecriptionOfMethod: ClapExamplesForTesting class >> #exampleWithEmptyComment
		expected: self newLine