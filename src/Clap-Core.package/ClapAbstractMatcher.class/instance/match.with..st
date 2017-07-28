matching
match: anArg with: aStream
	| match |
	match := self matchCanonicalName: anArg with: aStream peek.
	match
		ifFalse: [ ^ anArg mismatch ]
		ifTrue: [ ^ anArg matchWord: aStream next ]