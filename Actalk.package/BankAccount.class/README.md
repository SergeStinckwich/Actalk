Class BankAccount represents the seminal example of actors along the actor computation model.
It is very similar in spirit to class ActorCounter. Extensions to manage overdrafts may be more of interest (see class ProtectedBankAccount in category Actalk-Ext-Actor-Ext-Ex).

Note that when specifying a replacement behavior, either the behavior is explicitly named (in that case BankAccount) or implicitly refered to (self class). The latter case is more generic in that the methods may be reused in subclasses.

Instance Variables:

	balance		<Integer>	the balance of the bank account.