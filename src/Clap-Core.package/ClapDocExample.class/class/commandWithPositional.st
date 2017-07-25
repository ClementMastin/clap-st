documentation
commandWithPositional
	"A command with a positional"

	<sampleInstance>
	^ (ClapCommand withName: 'main') addPositional: (ClapPositional withName: 'class')