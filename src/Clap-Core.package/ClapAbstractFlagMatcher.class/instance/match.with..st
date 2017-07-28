matching
match: aFlag with: aStream
	| match queue |
	match := super match: aFlag with: aStream.
	match isMismatch ifTrue: [ ^ aFlag mismatch ].
	queue := ClapQueue new addAll: aFlag positionals.
	[ aStream atEnd ] whileFalse: [ | submatch | submatch := queue matchOn: aStream.submatch isMismatch ifTrue: [ ^ match ].submatch recordIn: match].
^ match
		 