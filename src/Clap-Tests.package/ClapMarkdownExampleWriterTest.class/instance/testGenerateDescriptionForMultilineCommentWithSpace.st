tests-description
testGenerateDescriptionForMultilineCommentWithSpace
	self
		assertDecriptionOfMethod: ClapExamplesForTesting class >> #exampleWithMultilineWithSpaceComment
		expected: String tab , 'A second line' , self newLine