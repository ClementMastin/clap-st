documentation
commandWithFlag
	"A command with flag"
	<sampleInstance>
	^ (ClapCommand withName: 'main') addFlag: (ClapFlag withName: 'force')