doc
addArgs: args of: aName with: aString
	args do: [ :a | self addToFile: args canonicalName , ':= ' , aString , 'withName' ]
	