helpers
assertTitleOfMethodWithGoodComment: aMethod
	self assertTitleOfMethodWithGoodComment: aMethod expected: '## ' , aMethod ast comments first contents lines first , self newLine