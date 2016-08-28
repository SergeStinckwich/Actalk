Class AbclBoundedBuffer implements the bounded buffer example with the waitFor:andDo: construct.
If a buffer accepted a disabled request (e.g., a put: message once it is full), it will explicitly wait for an alternative request (e.g., a get request) in order to first free the buffer.

See definition of put: and getAndReplyTo: methods.
Note that as opposed to behavior/state replacement as in class EmptyBoundedBuffer (category Actalk-Ext-Actor-Examples), synchronization code appears explicitly within the method body. This is because acceptance of method is controlled after already accepting a disabled request.
Note that mixing up synchronization code with method code is not highly modular. This proves to be a problem for reusing specifications in subclasses. As you may see in subclasses for get2 and gget methods.

Further note that there is an alternative version of the bounder buffer which uses its maibox as the buffer. See class AbclVirtualBoundedBuffer (and also ObjectBodyVirtualBoundedBuffer).