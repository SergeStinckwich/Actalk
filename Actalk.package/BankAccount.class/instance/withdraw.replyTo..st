script
withdraw: amount replyTo: r 
	amount < balance
		ifTrue: ["Safe case."
			self
				replace: (self class new balance: balance - amount).
			r reply: #withdrawalReceipt]
		ifFalse: ["Overdraft. We leave the balance unchanged..."
			self ready.
			"...before taking action... (Here we take NO action!).
			See class  
			ProtectedBankAccount for a real overdraft management."
			r reply: #overdraftReceipt]