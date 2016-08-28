Activity class ConcurrentSmalltalk2Activity provides an alternative implementation of post actions.
It is defined as a subclass of activity class SuspendActivity.

In this alternative model, post actions are defined as full methods, prefixed by postOF.
See example ConcurrentSmalltalk2BoundedBuffer.
Note that this model does not allow a plain method and its post method to share temporary variables because they have distinct bodies.