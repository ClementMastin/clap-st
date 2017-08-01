doc
generateDocumentationForMethod: aMethod
	| writer |
	self writeTitleForMethod: aMethod.
	self writeDescriptionForMethod: aMethod.
	self
		nextPutAll: '```';
		writeNewLine.
	writer := ClapDocWriter new: '' writeStream.
	writer generateDocumentationForMethod: (aMethod valueWithReceiver: self class arguments: #()).
	self generateCode: (aMethod valueWithReceiver: self class arguments: #()).
	self
		nextPutAll: writer stream contents;
		nextPutAll: '```';
		writeNewLine