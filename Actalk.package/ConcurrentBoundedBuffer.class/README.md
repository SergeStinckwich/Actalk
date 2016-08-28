Class ConcurrentBoundedBuffer implements a bounded buffer in a more basic way than class BoundedBuffer which is relying on an ordered collection.
The point is making put and get requests independent by managing different indexes. Thus this class may be used for concurrent accesses (allowing one put and one get at the same time).

Instance variables:

	array		<Array>		contains items.
	getIndex		<Integer>	index of next item to get.
	putIndex		<Integer>	index of next item to put.
	maxSize	<Integer>	max number of elements.