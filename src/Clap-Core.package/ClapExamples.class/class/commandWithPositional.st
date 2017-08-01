doc
commandWithPositional
	"A command with a positional
	
	$ app main Object"

	<sampleInstance>
	^ (ClapCommand withName: 'main') addPositional: (ClapPositional withName: 'class')