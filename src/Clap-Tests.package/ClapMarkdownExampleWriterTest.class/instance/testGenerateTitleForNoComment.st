tests-title
testGenerateTitleForNoComment
	self
		assertMethodWithGoodComment: ClapExamplesForTesting class >> #exampleWithNoComment
		expected: '## ', self newLine