Class SimulatedNowSender (and associated classes simulatedNowReceiver and SimulatedForwarder) show the reduction of ABCL/1 message types, that is reduction (here simulation) of a now type message send into:
	creation of a forwarder (to the sender object) which will be used as an identifier,
	past type message send with the forwarder as the reply destination,
	wait for the reply and check its sender, i.e., if it is the forwarder.
Original description of the reduction may be found in the OOCP book, pages 87-89.
In the example, the message selector is send. Another reply: message is sent before the actual reply to show the use of the where construct to identify the right reply.