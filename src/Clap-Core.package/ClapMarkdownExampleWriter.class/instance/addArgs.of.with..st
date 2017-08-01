doc
addArgs: args of: aName with: aString
	args do: [ :a | self nextPutAll: args canonicalName , ':= ' , aString , 'withName' ]
	