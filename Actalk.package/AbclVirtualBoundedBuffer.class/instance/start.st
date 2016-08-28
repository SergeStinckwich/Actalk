script
start
	"Keeps waiting for pairs get/put (get, then put)."
	"Needs to be sent to the active object as a starter."
	"Note that there is no script for methods put/get.
	They are only defined 
	and accepted from within this body-like construct
	(see also class 
	ObjectBodyVirtualBoundedBuffer). "
	[true]
		whileTrue: [self
				waitFor: #(#getAndReplyTo: )
				andDo: [:r | self
						waitFor: #(#put: )
						andDo: [:item | r reply: item]]]