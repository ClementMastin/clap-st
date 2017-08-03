doc
generateCode: aCommand
	| s |
	s := super generateCode: aCommand.
	s := s , (ClapFlagCodeGenerator generateCode: aCommand flags of: aCommand canonicalName).
	s := s , (self generateCode: aCommand subcommands of: aCommand canonicalName) .
	^ s  