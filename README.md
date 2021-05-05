# test_targets_future.callr
Test parallelised targets over multiple processes on a local machine.

## How to run the test
Fork this repo dan excecute `run.R` on your R console.

### Test #1: KatanaOnDemand 6 Cores CPU
```
> Sys.info()
                             sysname 
                             "Linux" 
                             release 
       "3.10.0-1160.24.1.el7.x86_64" 
                             version 
"#1 SMP Thu Apr 8 19:51:47 UTC 2021" 
                            nodename 
                              "k120" 
                             machine 
                            "x86_64" 
                               login 
                           "unknown" 
                                user 
                          "z5189999" 
                      effective_user 
                          "z5189999" 
                          
> parallel::detectCores(logical = F)
[1] 48
> parallel::detectCores(logical = T)
[1] 48
```

__Benchmark result #1__
```
> print(bench_results)
             test replications elapsed relative user.self sys.self
3 future_callr_2L            1  91.229  45614.5     0.271    0.095
5 future_callr_3L            1  46.597  23298.5     0.163    0.077
7 future_callr_4L            1  46.114  23057.0     0.204    0.100
1      sequential            1 121.250  60625.0     0.347    0.126
```
