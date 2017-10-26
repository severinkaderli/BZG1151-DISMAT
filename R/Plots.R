#**************************************************
# Abbildungen (Funktionen)
# Plotting functions with R
# Vidushi Bigler-Maillart
# 17.10.2017
# http://rstudio-pubs-static.s3.amazonaws.com/3365_9573f6d661b444499365fe1841ee65d3.html
#*************************************************

# install the package
#install.packages("ggplot2")

# load the package
library(ggplot2)

# Provide dummy dataset
p <- ggplot(data = data.frame(x = 0), mapping = aes(x = x))

# how does this look like?
p


# Define first function

fun.1 <- function(x) x + 1

# plot this function

p + stat_function(fun = fun.1) + xlim(-10000, 49832579843205)

# Define second function

fun.2 <- function(x) log10(x)

# plot the second function

p + stat_function(fun = fun.2) + xlim(-5,5)

# or plot both functions together by adding them to p

p + stat_function(fun = fun.1) + stat_function(fun = fun.2) + xlim(-5,5)

# the axis needs to be corrected!



