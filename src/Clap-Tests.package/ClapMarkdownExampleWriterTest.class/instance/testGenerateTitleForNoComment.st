tests-title
testGenerateTitleForNoComment
	self
		assertTitleOfMethodWithGoodComment: ClapExamplesForTesting class >> #exampleWithNoComment
		expected: '## ', self newLine