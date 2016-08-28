ClassQuickSortClient is used to control a distributed quick sort (QuickSortTree).
Class QuickSortClient is defined as a subclass of class ExplicitAcceptObject, as it uses the answer: construct to determine when sorting is completed (by accepting n messages oneInserted acknowledged by the QuickSortTree).
In order to display the result in a comprehensive form, it retrieves the elements once sorted and stored in a distributed way in the QuickSortTree, and recollects them into a collection.

Instance variables:

	topTree	<QuickSortTree address>		the top quick sort tree which will sort and contain elements.
	n		<Integer>					number of elements to sort.

See also class QuickSortTree comment.