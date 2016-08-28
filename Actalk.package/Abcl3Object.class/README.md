Class Abcl3Object defines program constructs to control express message computation.

Method nonResume may be used within an express message method. It will abort resumption of computing a normal mode message if one was being interrupted before its completion.
Method expressAtomic: may be used within any standard method. It ensures that computation won't be interrupted by a possibly incoming express message.

Class Abcl3Object is a subclass of class Abcl2Object.