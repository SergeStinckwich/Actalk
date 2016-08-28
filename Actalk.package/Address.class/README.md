Kernel class Address implements the address of an active object.
The address is the object which receives and buffers incoming messages.

To express and simulate a specific OOCP communication model, one will usually define a subclass of class Address and redefine some of its parameter methods to express different semantics of receiving messages.

The few parameter methods are defined in basic class Basic1Address.

See example of abstract subclass GenericSendAddress which parameterizes selection of various message passing types.

Useful facilities are following:

	compatibility constraints to specify possible incompatibilities between the three components of an active object (behavior, activity and address),
	specification is provided by methods activeObjectConstraint and activityConstraint.