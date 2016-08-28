Class Fibonacci is similar with class Factorial except it produces a double recursive call. As a result there is a need to join the two sub-results fac(n-1) and fac(n-2). The continuation is therefore named a join continuation because it waits for several (in this case two) replies and rejoins the divided computation.

There are three basic ways to implement such additive join computations.

The first way, found in the category Actalk-Kernel-JoinCont, has to make some check to discriminate between the first replied value which needs being stored and the next one which triggers the operation. See method n:replyTo:.
The second way, found in category Actalk-Ext-Actor-JoinCont, uses the concept of behavior replacement of the actor computation model (see class ActorObject). It is specified in a cleaner way but which could lead to less efficient implementations. See method n3:replyTo:.
The third way uses block continuations (as for class Factorial). However programming is more tricky in the case of a join continuation (because it assigns a variable captured by the lexical block closure). See method n4:replyTo:.

There is a more sophisticated version of Fibonacci defined as a memo function (see classes MemoFibonacci and SmartMemoFibonacci).