helpers
assertMethodWithGoodComment: aMethod
	self assertMethodWithGoodComment: aMethod expected: '## ' , aMethod ast comments first contents lines first , self newLine