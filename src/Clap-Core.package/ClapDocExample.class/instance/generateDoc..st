doc
generateDoc: aMethod
	| writer |
	self addToFile: aMethod comment, OSPlatform current lineEnding.
	writer := ClapDocWriter new: '' writeStream.
	writer generateDoc: (aMethod valueWithReceiver: self class arguments: #()).
	self addToFile: writer stream contents , '____' , OSPlatform current lineEnding