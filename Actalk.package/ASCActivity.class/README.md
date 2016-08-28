Activity class ASCActivity implements a mixed synchronization model.
ASC stands for Abstract State and Synchronization Counters.

This means having both:
	state transitions to specify state synchronization,
	and activation conditions (guards based on synchronization counters) to specify activation synchronization.

As a result specification is more modular and reusable. However these two synchronization dimensions are not fully orthogonal. (See example of classes ASCGetRearBoundedBuffer and ASCGetRear2BoundedBuffer).

This model has been proposed by Laurent Thomas at PARLE92 Conference.

Class ASCActivity is a combination of synchronization classes AbstractStatesActivity and CountersActivity. However because there is no multiple inheritance, we choose the most complex class, CountersActivity as the superclass, and we recopy the state transition part part. Meanwhile we need to be careful about the combination, because we have to ensure atomicity of checking of conditions and method completion. (This is actually easily specified through simple refinement of method checking the guard to also include the enabling check.)

See examples within category Actalk-Synchro-ASC-Ex.