running
setUp
	subject := ClapDocExample on: '' writeStream.
	method := (ClapDocExample class methods
		reject: [ :m | m name = 'ClapDocExample class>>#simpleCommand' = false ]) first