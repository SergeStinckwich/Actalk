Classes OptimizedImplicitReplyActivity and OptimizedImplicitReplyAddress implement a slightly optimized version of implicit reply.
The point is following: many transmissions are asynchronous. In such a case creating a future object means a waste of resources.

A simple way of tagging asynchronous message passing is by using special selectors (starting with capital letter A). In that case, the message sending and computation proceeds as for kernel active objects.

Note that this means that a same selector may not be used both for asynchronous message passing and other types (future or/and synchronous). However this is rarely the case, except when the value is of no use but the sender may want to be able to synchronize on the acknowledgement. In such a (rare) case the method may be duplicated.