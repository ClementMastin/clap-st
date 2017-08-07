doc
generateDocumentationForMethod: aMethod
	| writer |
	self writeTitleForMethod: aMethod.
	self writeDescriptionForMethod: aMethod.
	writer := ClapDocWriter new: '' file.
	writer
		generateDocumentationForMethod: (aMethod valueWithReceiver: self class arguments: #()).
	self nextPutAll: writer stream contents.
	self
		nextPutAll: '```';
		writeNewLine.
	self generateCode: (aMethod valueWithReceiver: self class arguments: #()).
	self
		
		nextPutAll: '```';
		writeNewLine