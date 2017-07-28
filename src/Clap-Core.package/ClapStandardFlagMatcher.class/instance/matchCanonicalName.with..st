matching
matchCanonicalName: aFlag with: aStream
	| word |
	word := aStream .
	^ word = aFlag shortForm or: word = aFlag longForm