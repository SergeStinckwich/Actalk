Class AtomicPhilosopher is defined as a subclass of class Philosopher.
It issues eatWith:and: requests to the table (rather than pickUp:and: and putDown:and:) as associated table activity class PlainInvocationTableActivity specifies.
(Therefore we name this class AtomicPhilosopher as it atomically requests forks, eats and releases them!).