matching
match: aCommand with: aStream
	| match queue |
	match := super match: aCommand with: aStream.
	match isMismatch
		ifTrue: [ ^ aCommand mismatch ].
	[ aStream atEnd ]
		whileFalse: [ | submatch word |
			queue := ClapQueue new addAll: aCommand positionals.
			word := aStream peek.
			(word matchesRegex: '[^[:alnum:]].*')
				ifTrue: [ submatch := self matchFlags: aCommand flags with: aStream ].
			(aCommand containsSubcommand: word)
				ifTrue: [ submatch := self match: (aCommand subcommands at: word) with: aStream ]
				ifFalse: [ submatch := queue matchOn: aStream ].
			submatch isMismatch
				ifTrue: [ ^ aCommand mismatch ] ]