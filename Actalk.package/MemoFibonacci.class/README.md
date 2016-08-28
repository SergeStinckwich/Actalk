Class MemoFibonacci computes fibonacci as a memofunction.
A memofunction is a function which memorizes its values once computed. This is specially useful for functions with may recompute many times same expressions. (This is the case for fibonacci because of the double recursive call).

Instance Variables:

	memoDictionary		<IdentityDictionary>	memorizes the associations <n,f(n)> once computed.

The memofunction first checks if the value is in the memory, otherwise it requests the actual computation with a new continuation. This continuation will dispatch the result of the actual computation to the initial reply destination and to the memofunction in order to memorize it.
MemoFibonacci cannot avoid recomputations if result of actual computation arrives too lately (which is mostly the case!).
A more efficient and less naive version is class SmartMemoFunction which ensures only one actual computation.

Note that most of the class is generic. Therefore the improved version will be an abstract class: SmartMemoFunction.