matching
matchOn: aStream
	(values includes: aStream peek)
		ifTrue: [ values removeAll.^ self matchWord: aStream next ]
		ifFalse: [ ^ self mismatch ]