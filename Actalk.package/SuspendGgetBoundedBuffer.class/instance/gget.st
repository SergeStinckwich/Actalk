script
gget
	"We cannot reuse previous definition of method get.
	Naive definition 
	as:
		self waitUntil: [afterPut not].
		^super get
	is not correct.
	This is 
	because we need to ensure atomically that both conditions (not after a 
	put and then not empty) are true.
	Otherwise when second condition (not 
	empty) is true,
	it could be that first condition (not after a put) is not 
	true anymore!"
	self
		waitUntil: [contents isEmpty not & afterPut not].
	^ contents removeFirst