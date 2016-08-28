script
insert: key with: info 
	"Insert a new association into the table.
	Note that acknowledgement is 
	immediately returned (so that the client does not have to wait).
	All 
	processing is done as post actions."
	self
		post: [myKey isNil
				ifTrue: ["If this node is still empty, then initialize the node with 
					the key."
					myKey := key.
					myInfo := info.
					left := SymbolTable new active.
					right := SymbolTable new active]
				ifFalse: ["Otherwise, insert it according to order."
					key = myKey
						ifTrue: [myInfo := info]
						ifFalse: [key < myKey
								ifTrue: [left insert: key with: info]
								ifFalse: [right insert: key with: info]]]]