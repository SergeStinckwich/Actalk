Class ObjectBodyActivity is a class of activity which delegates the specification of the body to the behavior itself.
The body is a live routine where the active object explicitly specifies which sequence of which set of messages it is willing to explicitly accept. Computation of the body starts as soon as the object is created.
Note that basic kernel activity class Basic1Activity defines the default body as an infinite loop accepting next message in order to express default semantics of reactivity (that is implicit acceptance of messages).

Delegating the specification of the body to the behavior itself happens to be useful if the body has many references to the behavior instance variables. This may be the case with plain use of the body concept as in the OOCP languages POOL and ConcurrentEiffel (where it is named live routine).
If the body is only used to express conditions of acceptance of messages, as for the bounded buffer example, its specification may remain within the activity in order to ensure a better separation between program (the behavior) and its control/synchronization (the activity).

Class ObjectBodyActivity is defined as a subclass of class ExplicitAcceptActivity because it usually needs to specify explicit acceptance of messages as it is the only way for it to receive messages.