doc
printUsage: aString of: aCommand
	"Prints the usage category, i.e all the possible syntaxes"

	| aux |
	aux := aCommand accept: self.
	aCommand flags do: [ :f | aux := aux , (f accept: self) ].
	aCommand positionals do: [ :p | aux := aux , (p accept: self) ].
	aCommand subcommands values do: [ :sc | self printUsage: aString , aux of: sc ].
	aCommand subcommands values size = 0
		ifTrue: [ self addToStream: aString , aux , self newLineString ]