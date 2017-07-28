matching
match: aCommand with: aStream
	| match queue |
	match := super match: aCommand with: aStream.
	match isMismatch
		ifTrue: [ ^ aCommand mismatch ].
	queue := ClapQueue new addAll: aCommand positionals.
	[ aStream atEnd ]
		whileFalse: [ | submatch word |
			word := aStream peek.
			(word matchesRegex: '[^[:alnum:]].*')
				ifTrue: [ submatch := self matchFlags: aCommand flags with: aStream ] ifFalse: [  
			(aCommand containsSubcommand: word)
				ifTrue: [ submatch := self match: (aCommand subcommands at: word) with: aStream ]
				ifFalse: [ submatch := queue matchOn: aStream ]].
			submatch isMismatch
				ifTrue: [ ^ aCommand mismatch ].
			submatch recordIn: match ].
	^ match