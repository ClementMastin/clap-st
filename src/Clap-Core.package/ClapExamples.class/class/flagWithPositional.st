doc
flagWithPositional
	"A command whith a flag which has a positional"

	<sampleInstance>
	| command flag |
	command := ClapCommand withName: 'main'.
	flag := (ClapFlag withName: 'depth') addPositional: (ClapPositional withName: 'number').
	command addFlag: flag.
	^ command