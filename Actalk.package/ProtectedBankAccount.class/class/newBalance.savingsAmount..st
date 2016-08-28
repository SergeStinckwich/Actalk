instance creation
newBalance: balance savingsAmount: savingsAmount
	"Create a bank account and its savings account."

	^self new
		balance: balance
		savings: (BankAccount new balance: savingsAmount) active