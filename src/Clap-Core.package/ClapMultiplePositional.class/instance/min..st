setting
min: n
	(n isInteger or: n isInfinite) ifTrue: [ 
		n < 1 ifTrue: [ "exception" ] ifFalse: [ min := n.max < min ifTrue:[max := min] ]]