private routines
compareNextLeaves
	"Compare leaves one by one after removing them from the two future 
	(queue) objects."
	| leaf1 |
	leaf1 := input1 nextValue.
	input2 nextValue = leaf1
		ifTrue: [leaf1 = #EOT
				ifTrue: ["EOT = end of tree special symbol."
					self success]
				ifFalse: [self compareNextLeaves]]
		ifFalse: [self failure]