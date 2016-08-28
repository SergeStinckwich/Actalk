printing
printOn: aStream 
	super printOn: aStream.
	aStream nextPut: $(.
	getIndex <= putIndex
		ifTrue: [getIndex
				to: putIndex - 1
				do: [:i | 
					(array at: i)
						printOn: aStream.
					aStream nextPut: $ ]]
		ifFalse: [getIndex
				to: array size
				do: [:i | 
					(array at: i)
						printOn: aStream.
					aStream nextPut: $ ].
			1
				to: putIndex - 1
				do: [:i | 
					(array at: i)
						printOn: aStream.
					aStream nextPut: $ ]].
	aStream nextPut: $)