script
ggetAndReplyTo: r 
	"Nothing to reuse and VERY complex.
	This is because if the buffer is 
	empty, we need to wait for a put,
	but then we cannot accept the gget. 
	So we need a put; put; get; gget sequence
	but it is not the only one 
	valid! "
	^ self