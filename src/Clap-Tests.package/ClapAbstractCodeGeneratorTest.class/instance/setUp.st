running
setUp
	super setUp.
	subject := self classToTest.
	argv := self clapClass withName: 'foo'