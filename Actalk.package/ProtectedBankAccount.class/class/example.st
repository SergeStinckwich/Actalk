example
example
	"self example"

	(self newBalance: 200 savingsAmount: 100) active
		deposit: 150 replyTo: Print;
		withdraw: 400 replyTo: Print;		"Create an overdraft (50)."
		balanceAndReplyTo: Print;
		deposit: 100 replyTo: Print;
		balanceAndReplyTo: Print