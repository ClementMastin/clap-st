setting
max: n
	(n isInteger or: n isInfinite)
		ifTrue: [ n < 1
				ifTrue: [ "exception" ]
				ifFalse: [ max := n.
					min > max
						ifTrue: [ min := max ] ] ]