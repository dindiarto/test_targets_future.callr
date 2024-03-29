# test_targets_future.callr
Test parallelised targets over multiple processes on a local machine.

__Test workflow__  
 
![image](https://user-images.githubusercontent.com/14798903/117104313-4309b300-adbf-11eb-909c-649f47d51592.png)
--

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

__Benchmark result #2__
```
> print(bench_results)
 test replications elapsed relative user.self sys.self
3  future_callr_2L            2  93.354  46677.0     0.138    0.015
5  future_callr_3L            2  55.219  27609.5     0.084    0.020
7  future_callr_4L            2  49.509  24754.5     0.091    0.013
9  future_callr_6L            2  49.720  24860.0     0.081    0.018
1       sequential            2 122.188  61094.0     0.165    0.019
```
