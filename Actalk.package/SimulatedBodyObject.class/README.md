Class SimulatedBodyObject is a behavior class whose only purpose is to demonstrate that reactive objects (kernel active objects are activated only by message passing and accept messages implicitly) and autonomous body (autonomous live routine whose computation starts once the object is created and specifies explicit acceptance of messages) may simulate each other.

Actually, simulation of reactivity by a body is achieved within basic kernel activity class Basic1Activity which defines the default body as an infinite loop accepting next message.
Behavior class SimulatedBodyObject resimulates the body on top of reactivity by defining a body method at the behavior level. This message is automatically sent to the active object (address) once the activity (message active) is started.
As a result this initial body message will be the first and only message to be implicitly accepted, as next ones will be explicitly accepted from within the body specification.

Class SimulatedBodyObject is defined as a subclass of behavior class ExplicitAcceptObject.

Note that although behavior classes SimulatedBodyObject and ObjectBodyObject look similar in that they both define a default body at the behavior level, their semantics is different.
The body method of class ObjectBodyObject is called by the body method of class ObjectBodyActivity which redefines kernel activity parameter method body.
The body method of class SimulatedBodyObject is called by message passing. The kernel activity parameter method body has not been redefined. Thus there are two distinct levels of body methods as for a resimulation.