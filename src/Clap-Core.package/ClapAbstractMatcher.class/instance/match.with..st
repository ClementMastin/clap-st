matching
match: anArg with: aStream
	| match |
	match := self matchCanonicalName: anArg with: aStream peek.
	match isMismatch ifTrue: [ ^ anArg mismatch ] ifFalse: [ ^ anArg matchWord: aStream next ]