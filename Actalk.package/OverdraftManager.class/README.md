Class OverdraftManager implements overdraft management of a ProtectedBankAccount.
It will compute and send/assign the replacement behavior of the protected bank account.

Instance Variables:

	account		<ProtectedBankAccount address>	is insensitive during the overdraft management.
	balance		<Integer>						the current balance of the ProtectedBankAccount.
	savings		<BankAccount address>			the savings account.
	r			<Address>						the reply destination to which the receipt
												acknowledgement has to be sent.