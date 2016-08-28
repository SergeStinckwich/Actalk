script
insert: value andAckTo: r 
	"Insert an element into this quicksort tree and acknowledge to the reply 
	destination (client).
	Insertion is selected between both sub trees 
	according to the pivot value."
	pivot isNil
		ifTrue: ["If no pivot value yet (unitialized tree), then insert the value as 
			the new pivot value."
			pivot := value.
			"Acknowledge that one element has been inserted."
			r oneInserted]
		ifFalse: ["Otherwise, insertion is delegated to one of the sub trees.
			Note 
			that the sub trees are lazily created."
			value < pivot
				ifTrue: [leftSubTree isNil
						ifTrue: [leftSubTree := self class new active].
					leftSubTree insert: value andAckTo: r]
				ifFalse: [rightSubTree isNil
						ifTrue: [rightSubTree := self class new active].
					rightSubTree insert: value andAckTo: r]]