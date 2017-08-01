doc
writeTitleForMethod: aMethod
	| comment comments |
	comments := aMethod ast comments.
	comment := comments
		ifEmpty: [ '' ] 
		ifNotEmpty: [ 
			comments first contents
				ifEmpty: [ '' ]
				ifNotEmpty: [ comments first contents lines first ] ].
	self
		nextPutAll: '## ';
		nextPutAll: comment;
		writeNewLine