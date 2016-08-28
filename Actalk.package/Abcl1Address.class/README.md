Class Abcl1Address implements the three ABCL/1 types of message passing:

	now	 type:		synchronous
	past	 type:		asynchronous, as in standard Actalk
	future type:		returning eagerly a future queue object (see class MAFuture)

On ABCL/1, see the book ABCL/1, edited by Akinori Yonezawa, MIT-Press, 1990.

Warning: recursive synchronous message passing immediately leads to a deadlock.
So don't send a now message to aself!

See examples in Actalk-Ext-Abcl-Examples.