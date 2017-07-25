doc
generateExamples
	(self class class methods reject: [ :m | (m hasPragmaNamed: #sampleInstance) = false ])
		do: [ :m | 
			self generateDoc: m].
	file close