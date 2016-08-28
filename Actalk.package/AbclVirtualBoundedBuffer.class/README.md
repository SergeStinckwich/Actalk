Class AbclVirtualBoundedBuffer implements the bounded buffer example by using the mailbox of the active object as the buffer itself.
The basic idea is to wait for and serve pairs of put/get requests. Single put or get requests will keep pending (being buffered) in the mailbox itself.

See also class ObjectBodyVirtualBoundedBuffer for a similar flavor but for a different activity model.