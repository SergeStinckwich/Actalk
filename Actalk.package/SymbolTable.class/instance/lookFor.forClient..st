script
lookFor: key forClient: client 
	"Look for a key into the table.
	Note that acknowledgement is immediately 
	returned (so that the client does not have to wait).
	All processing is 
	done as post actions."
	self
		post: [myKey isNil
				ifTrue: ["Key not found, then return nil."
					client reply: nil]
				ifFalse: ["Otherwise, we can compare both keys."
					key = myKey
						ifTrue: ["If same key, then return the associated info."
							client reply: myInfo]
						ifFalse: ["Otherwise propagate the search to one of the 
							sub nodes according to order."
							key < myKey
								ifTrue: [left lookFor: key forClient: client]
								ifFalse: [right lookFor: key forClient: client]]]]