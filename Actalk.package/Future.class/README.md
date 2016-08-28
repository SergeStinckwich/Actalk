Class Future implements future objects which hold a value not computed yet.
Class Future is defined as a subclass of class BecomeFuture.
As opposed to BecomeFuture, class Future does not implement a become change.
It defines a variable, named value, to hold the actual value of the future.
It may hold any kind of object, including primitive ones, as opposed to class BecomeFuture.

Class Future is very close to class CBox of ConcurrentSmalltalk. (see in the book OOCP).

Instance Variables:

	value		<Object>		holds the value. May be not assigned yet.