Class QuickSortTree implements a distributed sorter.
This simple algorithm has been initially described in ABCL/1 by Etsuya Shibayama and Akinori Yonezawa in Distributed Computing in ABCL/1, in the book OOCP, edited by A. Yonezawa and M. Tokoro, MIT-Press, 1987, pages 123-126. This divide and conquer algorithm regards the data as active objects and requests as messages. This makes the synchronization easy as opposed as if we would let concurrent processes access a passive tree.
The initial algorithm has been someway transformed and simplified here.

Each QuickSortTree is recursively decomposed into a pivot value and two subtrees, left and right, according to elements lower or greater than the pivot.
Note that the method insert:andAckTo: specifies a reply destination to which an acknowledgement message (oneInserted) will be issued. The client (QuickSortClient) will accept (wait for) as many oneInserted messages as there are elements to be sorted. Therefore the client will be able to know when the sorting is completed.

Class QuickSort is a subclass of class ImplicitReplyObject, as it uses synchronous message passing to recursively retrieve elements.

Instance variables:

	leftSubTree		<QuickSortTree address>		left sub tree.
	pivot			<Object>					the division pivot value stored.
	rightSubTree	<QuickSortTree address>		right sub tree.

See also class QuickSortClient comment.
See also a similar example of a distributed symbol table in category Actalk-Ext-Pool-Examples.