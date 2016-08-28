script
deposit: amount replyTo: r 
	self
		replace: (self class new balance: balance + amount savings: savings).
	r reply: #depositReceipt