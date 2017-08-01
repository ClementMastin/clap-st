running
setUp
	super setUp.
	stream := '' writeStream.
	subject := ClapMarkdownExampleWriter on: stream.