Class Consumer implements the consumer of a bounded buffer.
It is defined as a subclass of abstract class BoundedBufferClient.

There are several methods to run the consumer, depending on the type of the communication protocols (asynchronous, synchronous, implicit reply) with the bounded buffer active object.

Additional run methods generate get2 (to get two elements at once) or gget (disabled after a put) requests. They are introduced in synchronization extension classes, see Actalk-Synchro-* categories. They have been proposed as seminal examples of inheritance anomalies by Satoshi Matsuoka and Akinori Yonezawa in the book Research Directions in COOP, MIT-Press, 1993.