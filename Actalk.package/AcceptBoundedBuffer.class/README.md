Class AcceptBoundedBuffer implements the bounded buffer example with the answer: construct for explicit message acceptance.
If a buffer accepted some disabled request (e.g., a put: message once it is full), it will explicitly wait for an alternative request (e.g., a get request) in order to first free the buffer.

See definition of put: and get methods.

Note that as for class AbclBoundedBuffer, synchronization code appears explicitly within the method body. As a result this model is not very good at reusing specifications.