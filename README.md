# test_targets_future.callr
Test parallelised targets over multiple processes on a local machine


```
> print(bench_results)
             test replications elapsed relative user.self sys.self
3 future_callr_2L            1  91.229  45614.5     0.271    0.095
5 future_callr_3L            1  46.597  23298.5     0.163    0.077
7 future_callr_4L            1  46.114  23057.0     0.204    0.100
1      sequential            1 121.250  60625.0     0.347    0.126
```
