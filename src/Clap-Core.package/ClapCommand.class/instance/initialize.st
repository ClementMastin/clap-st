initialization
initialize
	super initialize.
	subcommands := Dictionary newFrom: #().
	flags := OrderedCollection new