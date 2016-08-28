Class Abcl3Address implements the ABCL/1 express mode message passing.

Messages sent in the express mode take priority over normal mode messages (like an interruption).
Their selectors are tagged as starting with a E (E for Express).

Class Abcl3Address is defined as a subclass of class Abcl2Address.

See also associated classes of activity Abcl3Activity, for handling express mode messages, and of behavior Abcl3Object, for program control from and on express message activations.

Instance Variables:

	expressMailBox		<MailBox>	a mailqueue containing express messages.