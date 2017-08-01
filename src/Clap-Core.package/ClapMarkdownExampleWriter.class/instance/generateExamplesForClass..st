doc
generateExamplesForClass: aClass
	(aClass class methods
		select: [ :m | m hasPragmaNamed: #sampleInstance ])
			do: [ :m | self generateDocumentationForMethod: m ]