script
deposit: amount replyTo: r 
	self
		replace: (self class new balance: balance + amount).
	r reply: #depositReceipt