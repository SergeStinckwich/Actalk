Class AbclFibonacci implements fibonacci computation with two variants.

The first one is using two waitFor:andDo: constructs in order to wait for both subresults, as proposed in ABCL/R2 (Masuhara et al. 1993).

The second one is adding two future type transmissions, as proposed in ABCL/f (Taura et al. 1994).
It is similar to IRFibonacci defined in category Actalk-Ext-ImplicitReply-Ex.