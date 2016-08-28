Class ExternalReplaceActorAddress manages behavior replacement message.
This allows a replacement behavior to be computed externally and sent to the actor.
This is useful when the replacement behavior needs some non local information to be computed and therefore has to be computed externally by another actor.
Meanwhile the actor becomes insensitive (because it cannot accept any message with no behavior) while waiting (passively) for its replacement behavior.

Class ExternalReplaceActorAddress is a subclass of address kernel class Address.
Method replace: directly handles behavior replacement messages at the address level (and not at the behavior level). This is necessary because while insensitive the actor may not accept any message!

Example of use is the management of overdraft. See class ProtectedBankAccount in category Actalk-Ext-Actor-Ext-Ex.
Also immediate extensions are implementations of futures, see class FutureActor.