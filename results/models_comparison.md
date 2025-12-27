# Model Comparison

## Predicate evaluation

_Predicate-only metrics: functor + arity + numeric arguments. Source citations are evaluated separately._

```text
Model        TP   FP  FN   Prec    Rec     F1
---------------------------------------------
gpt-4.1     211  310  48  40.5%  81.5%  54.1%
gpt-5       220  387  39  36.2%  84.9%  50.8%
gpt-5-mini  218  467  41  31.8%  84.2%  46.2%
```

## Source citation comparison
```text
Model       Matched  Src_OK  Src_WRONG  Src_acc
-----------------------------------------------
gpt-4.1         211  146.16      64.00    69.3%
gpt-5           220  162.67      52.00    73.9%
gpt-5-mini      218  161.73      48.00    74.2%
```
