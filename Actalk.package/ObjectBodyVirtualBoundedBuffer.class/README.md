Class ObjectBodyVirtualBoundedBuffer implements the bounded buffer example by using the mailbox of the active object as the buffer itself.
The basic idea is to keep put: requests pending (in the mailbox) until they get served by a get request.
Instance variable element is a (primitive) means of communication between put: method and get method.

See also class AbclVirtualBoundedBuffer for a similar flavor but for a different activity model.