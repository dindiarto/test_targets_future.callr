library(rbenchmark)
library(targets)
bench_results <- benchmark("sequential" = {
  tar_make()
},
"tar_destroy_1" = {
  tar_destroy()
},
"future_callr_2L" = {
  tar_make_future(workers = 2L)
},
"tar_destroy_2" = {
  tar_destroy()
},
"future_callr_3L" = {
  tar_make_future(workers = 3L)
},
"tar_destroy_3" = {
  tar_destroy()
},
"future_callr_4L" = {
  tar_make_future(workers = 4L)},
"tar_destroy_4" = {
  tar_destroy()
},
"future_callr_6L" = {
  tar_make_future(workers = 6L)},
"tar_destroy_5" = {
  tar_destroy()
},
replications = 2,
columns = c("test", "replications", "elapsed",
            "relative", "user.self", "sys.self"))
print(bench_results)