*actalk
copyWithoutAnyOf: aCollection 
	"Answer a copy of the receiver in which all occurrences of all elements
	of aCollection
 have been left out."
	| aStream |
	aStream := WriteStream
				on: (self species new: self size).
	self
		do: [:each | (aCollection includes: each)
				ifFalse: [aStream nextPut: each]].
	^ aStream contents