Class Abcl1Object implements the ABCL/1 wait-for construct.
Method waitFor:andDo: construct provides explicit acceptance of a message among a set of selectors. Once accepted the argument block is evaluated with the arguments of the message bound to the parameters of the block.
An example of the use of this construct is given in the bounded buffer example in category Actalk-Ext-Abcl-Example.

Note that in order to layer the large amount of functionalities and constructs offered by the ABCL/1 language, there are actually three progressive layers:

	Abcl1		wait for construct and 3 types of message send

	Abcl2		wait with where constraint construct, access to the sender of a message,

	Abcl3		express mode of message send.