matching
match: aCommand with: aStream
	| match |
	match := super match: aCommand with: aStream.
	match isMismatch ifTrue: [ ^ aCommand mismatch ].
	[ aStream atEnd ] whileFalse: [ | submatch word |
		word := aStream peek.
		(word matchesRegex: '[^[:alnum:]].*') ifTrue ]