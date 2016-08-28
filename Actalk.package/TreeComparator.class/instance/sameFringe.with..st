script
sameFringe: tree1 with: tree2 
	"Compute a same fringe.
	Initiate the two communication channels 
	through the two future type messages sends.
	Then start peeking into the 
	two (queue) future objects used as two communication pipes."
	input1 := extractor1 fringe: tree1 replyTo: #future.
	input2 := extractor2 fringe: tree2 replyTo: #future.
	self compareNextLeaves