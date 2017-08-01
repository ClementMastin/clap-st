tests-title
testGenerateDescriptionForMultilineCommentWithSpace
	self
		assertDecriptionOfMethod: ClapExamplesForTesting class >> #exampleWithMultilineWithSpaceComment
		expected: 'A second line' , self newLine