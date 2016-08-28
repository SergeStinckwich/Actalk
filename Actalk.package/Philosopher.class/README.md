Class Philosopher implements the dining philosophers example with guards.
As opposed to the solution with POOL explicit message acceptance (see class PoolPhilosopher) which needed to restrict the number of philosophers accessing the table in order to ensure deadlock avoidance, this description does not need to.
We even may run any number of philosophers, e.g., p times the number of forks.
The solution makes use of a class GuardsTable to centralize access to the forks in order to ensure that a philosopher picks up his two forks at once (atomically) if they are both available.