matching
match: aFlag with: aStream
	| word match |
	word := aStream peek.
	word = aFlag shortForm
		ifTrue: [ match := aFlag matchWord: aStream next ]
		ifFalse: [ ^ aFlag mismatch ]