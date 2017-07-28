matching
matchFlags: flags with: aStream
	flags
		do: [ :f | 
			| match |
			match := f matcher match: f with: aStream.
			match isMismatch
				ifFalse: [ ^ match ] ].
	^ ClapMismatch new