Class BodyBoundedBuffer implements the bounded buffer example with use of a body to specify synchronization.
The body specifies which messages it may accept according to its state.
Note that synchronization code is centralized within the body. As a result this model is not very good at reusing specifications because it has to fully redefine the body.

Further note that there is an alternative version of the bounder buffer which uses its maibox as the buffer. See class ObjectBodyVirtualBoundedBuffer (and also AbclVirtualBoundedBuffer).