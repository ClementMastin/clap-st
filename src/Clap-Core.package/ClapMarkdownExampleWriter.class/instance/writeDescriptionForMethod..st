writing
writeDescriptionForMethod: aMethod
	| comment comments |
	comments := aMethod ast comments.
	comment := comments ifNil: [ '' ] ifNotNil: [  
	comments size < 3
		ifTrue: [ '' ]
		ifFalse: [ self newLine join: (comments allButFirst: 2) ]].
	self
		nextPutAll: comment;
		writeNewLine