Class AbclfAddress implements the single assignment future type of message passing of ABCL recent variant: ABCL/f.

It is defined as a subclas of class Abcl1Address.
Future type message passing dispatch is redefined to return a single assignment future object (class SAFuture and not MAFuture).

See example of use in class AbclFibonacci.