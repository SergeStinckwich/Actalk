Class PartialBoundedBuffer represents a bounded buffer not empty nor full.
It is defined as a subclass of class EmptyBoundedBuffer.
It only defines method getAndReplyTo:.
Note that if multiple inheritance would exist, class PartialBoundedBuffer should be defined as a subclass of both EmptyBoundedBuffer and FullBoundedBuffer. Here we have to duplicate method getAndReplyTo: from class FullBoundedBuffer.