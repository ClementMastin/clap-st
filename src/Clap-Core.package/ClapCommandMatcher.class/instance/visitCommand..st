matching
visitCommand: aCommand
	| match |
	match := aCommand matchWord: aCommand canonicalName.
	[ stream atEnd ]
		whileFalse: [ | word subMatch |
			word := stream next.
			(word beginsWith: $-)
				ifTrue: [ subMatch := self matchArgs: aCommand flags ].
			(aCommand containsSubcommand: word)
				ifTrue: [ subMatch := (aCommand subcommands at: word) accept: self ] ]