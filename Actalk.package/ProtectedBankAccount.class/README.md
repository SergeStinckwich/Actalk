Class ProtectedBankAccount implements a bank account with provision and overdraft management.
It is a subclass of class BankAccount.
In order to manage overdrafts, a protected bank account will own some private bank account, called its savings, as an overdraft protection.
In case of overdraft, the protected bank account will inquire its savings for protection, by sending to it a request for withdrawal of the overdraft amount.
If the overdraft could be covered by the savings account, then the overdraft amount is withdrawn from the savings and used to rebalance the protected bank account (which then becomes null).
If the overdraft is too important for the savings, then previous behavior is unchanged (and a justice decision is requested!?!).

The point is following: the protected bank account cannot decide its further balance (and replacement behavior) before getting the reply (acceptance or reject) from the savings account. Meanwhile it becomes insensitive. A specific continuation will be created to manage the acknowledgement (receipt) from the savings and to compute and send the behavior replacement accordingly. The corresponding class is named OverdraftManager.

Instance Variables:

	savings		<aBankAccount address>		the savings account.