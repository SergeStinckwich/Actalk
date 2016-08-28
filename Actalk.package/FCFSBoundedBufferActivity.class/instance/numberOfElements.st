accessing
numberOfElements
	"Number of elements currently in the buffer.
	Compute the difference between completed put: and completed get.
	Note: this is correct because we assume that there is only one put: at once, and only one get at once."

	^(self completed: #put:) - (self completed: #get)