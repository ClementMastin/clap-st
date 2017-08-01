doc
standardCommand
	"A standard command"

	<sampleInstance>
	| player mine move |
	player := ClapCommand withName: 'player'.
	fast := ClapFlag withName: 'fast'.
	slow := ClapFlag withName: 'slow'.
	mine := (ClapCommand withName: 'mine')
		addSubcommand: (ClapCommand withName: 'set');
		addSubcommand: (ClapCommand withName: 'remove').
	player addSubcommand: mine.
	move := (ClapCommand withName: 'move')
		addPositional: (ClapPositional withName: 'x');
		addPositional: (ClapPositional withName: 'y').
	player addSubcommand: move.
	player addFlag: fast;addFlag: slow.
	^ player