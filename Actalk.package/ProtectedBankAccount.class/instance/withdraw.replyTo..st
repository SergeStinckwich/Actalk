script
withdraw: amount replyTo: r
	"In case of overdraft, become insensitive while waiting for management
	(the savings account is inquired for possible covering of the overdraft)."

	amount < balance
		ifTrue:
			["Safe case."
			self replace:
				(self class new balance: balance - amount savings: savings).
			r reply: #withdrawalReceipt]
		ifFalse:
			["Overdraft."
			savings withdraw: (amount - balance)	"Withdrawal request is sent to the savings account"
					replyTo:						"with an overdraft manager as continuation."
						(OverdraftManager new		
								account: aself	"Ths continuation stores all necessary info."
								balance: balance
								savings: savings
								r: r) active]

	"Note that there is no behavior replacement in case of overdraft.
	The protected bank account actor becomes insensitive until reception of
	a behavior replacement message conveying the replacement behavior computed
	and issued by the overdraft manager continuation.
	It does not reply a receipt either, the overdraft manager will."