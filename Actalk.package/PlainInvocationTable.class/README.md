Class PlainInvocationTable implements an alternative representation of the dining philosophers problem.
As opposed to class InvocationTable, availability of forks is not represented as a table (set of variables). By being able to access to the set of current invocations (which is managed by class PlainActivity) we specify the guard as checking that no fork should be shared by any current invocation.
Methods pickUp:and: and putDown:and: are replaced by one method eatWith:and:.
We need to define a new class of philosophers (AtomicPhilosopher) to issue eatWith:and: requests to the table.

See associated activity class PlainInvocationTableActivity.
This solution has been initially described in the report on Synchronization Variables (see class InvocationActivity comment).

Note that PlainInvocationTableActivity is defined as a subclass of behavior class PlainInvocationObject because it makes use of the sender method to access current sender (from within method eatWith:and:).