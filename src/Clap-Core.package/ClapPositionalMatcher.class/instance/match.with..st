matching
match: anArg with: aStream
	^ (anArg beginsWith: '-') ifTrue: [ anArg mismatch ] ifFalse: [ anArg matchWord: aStream next ]
 