matching
matchCanonicalName: aFlag with: aStream
	| word |
	word := aStream peek.
	^ word = aFlag shortForm or: word = aFlag longForm