writing
writeDescriptionForMethod: aMethod
	| comment comments |
	comments := aMethod ast comments.
	comment := comments ifNil: [ '' ] ifNotNil: [  
	comments first contents lines size < 3
		ifTrue: [ '' ]
		ifFalse: [ OSPlatform current lineEnding join: (comments first contents lines allButFirst: 2) ]].
	self
		nextPutAll: comment;
		writeNewLine