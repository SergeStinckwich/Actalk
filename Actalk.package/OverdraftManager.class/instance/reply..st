script
reply: receipt
	"Overdraft management."

	(Delay forMilliseconds: 5) wait.		"Simulation of network access latency!"
	receipt = #withdrawalReceipt	
		ifTrue:
			["If the savings covers the overdraft, then the protected bank account new balance becomes 0."
			account replace:
				(ProtectedBankAccount new balance: 0 savings: savings).
			r reply: #overdraftCoveredReceipt]
		ifFalse:
			["Otherwise, we leave it as it was."
			account replace:	
				(ProtectedBankAccount new balance: balance savings: savings).
			r reply: #overdraftNotCoveredReceipt]