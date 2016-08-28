Class InvocationTable implements the dining philosophers example with guards and generic invocations.
As opposed to class GuardsTable, note that availability of each fork is specified by the associated activity class and not by this class. Checking and updating fork availability is a pure synchronization problem.
See associated activity class InvocationTableActivity.

This solution has been initially described in the report on Synchronization Variables (see class InvocationActivity comment).