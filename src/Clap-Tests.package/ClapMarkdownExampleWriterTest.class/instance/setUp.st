running
setUp
	super setUp.
	stream := '' file.
	subject := ClapMarkdownExampleWriter on: stream.