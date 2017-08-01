tests-title
testGenerateTitleForEmptyComment
	self
		assertMethodWithGoodComment: ClapExamplesForTesting class >> #exampleWithEmptyComment
expected: '## ' , self newLine