# Model Comparison

## Predicate evaluation

_Predicate-only metrics: functor + arity + numeric arguments. Source citations are evaluated separately._

```text
Model        TP   FP  FN   Prec    Rec     F1
---------------------------------------------
gpt-4.1     211  310  48  40.5%  81.5%  54.1%
gpt-5       220  387  39  36.2%  84.9%  50.8%
gpt-5-mini  218  467  41  31.8%  84.2%  46.2%
gpt-5.5     230  375  29  38.0%  88.8%  53.2%
```

## Source citation comparison
```text
Model       Matched  Src_OK  Src_WRONG  Src_acc
-----------------------------------------------
gpt-4.1         211  146.16      64.00    69.3%
gpt-5           220  162.67      52.00    73.9%
gpt-5-mini      218  161.73      48.00    74.2%
gpt-5.5         228  183.26      37.00    80.4%
```

## Reasoning comparison (Prolog)
_Reasoning outputs compared to gold reasoning (rule base + gold facts)._
```text
Model       TP  FP  FN    Prec    Rec     F1
--------------------------------------------
gpt-4.1     12   0   7  100.0%  63.2%  77.4%
gpt-5        9   2  10   81.8%  47.4%  60.0%
gpt-5-mini   6   3  13   66.7%  31.6%  42.9%
gpt-5.5     12   4   7   75.0%  63.2%  68.6%
```
