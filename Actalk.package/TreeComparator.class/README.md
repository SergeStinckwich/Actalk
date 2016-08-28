TreeComparator implements pattern matching of the fringes of two trees (implemented as two Smalltalk arrays).
(This is the classical same-fringe example). This ABCL/1 version was originally described in OOPSLA'86 paper on ABCL/1. It was some derivation of algorithm introduced by Bernard Serpette in his thesis (1984) on concurrent Lisp (named Pive) with Unix-like pipes as communication channels.

There are three active objects in the algorithm.
Two extractors (TreeExtractor) extract the fringe of each tree, that is generate successive leaves.
The comparator (TreeComparator) compares the two fringes leaf by leaf.
The comparator send the initial requests to both extractors through two future type messages.
Each extractor will use its future object (MAFuture) reply destination to return each new leaf to the comparator.
In this example MAfutures are used as communication channels (as for Unix pipes).

Note that both extraction (by TreeExtractor) and comparison (by TreeComparator) methods are recursive and are both defined as private routines. TreeExtractor method extract: needs to be defined as a private routine because it involves recursion and synchronization. Therefore it cannot be defined in a straightforward way as a script method. (Remember that recursion and synchronous message sending leads to deadlock, thus we would have to find alternative non trivial way of writing down the extraction process).

In case of failure (matching fails) the comparator send messages in the express mode to both extractors in order to stop them (aborting their current tree extraction by using the nonResume construct).

Class TreeComparator is defined as a subclass of class Abcl1Object.
Class TreeExtractor is defined as a subclass of class Abcl3Object in order to manage express mode message send (for possible stop).