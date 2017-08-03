doc
generateCode: aCommand
	| commandName s |
	commandName := aCommand canonicalName.
	s := commandName , ' := ClapCommand withName: ' , commandName , '.'
		, OSPlatform current lineEnding.
	s := s , ClapPositionalCodeGenerator generateCode: aCommand positionals of: commandName. 
	s := s , ClapFlagCodeGenerator generateCode: aCommand flags of: commandName.
	s := s , self generateCode: aCommand subcommands of: commandName.
	^ s