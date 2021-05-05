library(targets)
library(future.callr)

test_func <- function(x){
  Sys.sleep(20)
  return(x*2)
}

plan(callr)
list(
  tar_target(t1, test_func(9)),
  tar_target(t2, test_func(t1)),
  tar_target(t3, test_func(9)),
  tar_target(t4, test_func(t3)),
  tar_target(t5, test_func(9)),
  tar_target(t6, test_func(t5))
)
