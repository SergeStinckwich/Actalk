script
getRear
	"Remove the last element of the buffer."
	putIndex := putIndex - 2 \\ array size + 1.
	^ array at: putIndex