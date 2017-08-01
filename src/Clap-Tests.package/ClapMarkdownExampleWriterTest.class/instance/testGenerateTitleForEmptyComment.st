tests-title
testGenerateTitleForEmptyComment
	self
		assertTitleOfMethodWithGoodComment: ClapExamplesForTesting class >> #exampleWithEmptyComment
expected: '## ' , self newLine