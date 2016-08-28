Class AbclReplaceCounter is an example of hybrid active object which has:

	activity and behavior semantics of the Actor model of computation,
	that is replacement behavior (active object behavior class ActorObject),
	and single message activity (activity class SingleMessageActivity),

	and:

	communication semantics of ABCL/1,
	that is the three types of message passing (address class AbclAddress).

This kybrid specie is working. Note that running the compatibility check returns true.
Meanwhile not all kinds of hybrids are necessary valid active objects.