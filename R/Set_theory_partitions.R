#**************************************************
# Set theory (Mengenlehre)
# Illustration of partitioning
# Vidushi Bigler-Maillart
# 9.10.2017
# https://cran.r-project.org/web/packages/partitions/vignettes/setpartitions.pdf
# Attention in the above paper they messed up the number of tasks with 
# the number of processors (m and n are the other way round)  :(
#*************************************************

# install the package
install.packages("partitions")
# load the package
library(partitions)


#****************************************
# 4 tasks and 2 processors
total_partition_4_2 <- setparts(restrictedparts(4, 2, include.zero = FALSE))

total_partition_4_2

# This piece of code helps determine the combination with the minimal time
# but we won't be looking at the apply functions in this class
tau <- 1:4
slowest <-  function(x) max(tapply(tau, x, sum))
time.taken <- apply(total_partition_4_2,2,slowest)
minimal.time <- sum(tau)/2
total_partition_4_2[,time.taken == minimal.time]


# 9 tasks and 3 processors

total_partition_9_3 <- setparts(restrictedparts(9, 3, include.zero = FALSE))
# the resulting expression in very large and therefore we print the summary
summary(total_partition_9_3)
