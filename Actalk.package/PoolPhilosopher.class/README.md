Class PoolPhilosopher (with classes PoolFork and PoolRoom) implements the seminal synchronization example of the dining philosophers.

This problem consists of n philosophers sitting around a table. N forks are placed between them. This means that a philosopher shares his left fork with his left neighbour (who sees it as his right fork) and his right fork with his right neighbour (who sees it as his left fork).
Each philosopher alternatively thinks and then eats. In order to eat a philosopher attempts at picking up his left fork and then his right fork. After eating he releases both forks.

There are two problems to be solved.
First is deadlock avoidance. Suppose that every philosopher picks up his left fork. Then they will all infinitely wait for their right forks to be free (because their right fork is held by the philosopher sitting at their right).
Second is starvation avoidance. One philosopher may starve by being unable to eat if his two forks are never both free.

This implementation follows the algorithm proposed in the POOL language where philosophers and forks are active objects.
The initial implementation in a previous version of Actalk was achieved by a group of students of DESS of University of Nantes, under the guidance of Jean Bezivin and Olivier Roux.

Note that a philosopher never answers any message, only the body is used.

Note that in order to avoid deadlock we need to introduce a dining room where philosophers have to enter in order to ensure that there is at most n-1 philosophers trying to eat.

Another solution without the need for a room needs prior check of availability of forks requested. Therefore synchronization depends on consultation of the arguments (which forks are requested). The answer: construct does not allow such inquiry.
Thus that solution will be described in a synchronization formalism using guards, see in category Actalk-Synchro-Guards-Ex.

Instance Variables:

	number			<Integer>			number of the philosopher (for tracing purposes).
	room			<PoolRoom address>	the room where they think.
										This is used to restrict access to forks (and food!)
										to only n-1 philosophers.
	leftFork			<PoolFork address>	left fork of the philosopher.
	rightFork		<PoolFork address>	right fork of the philosopher.
	numberSteps	<Integer>			number of times the philosopher(s) will think and eat.