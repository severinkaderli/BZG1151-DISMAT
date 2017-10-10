#**************************************************
# Set theory (Mengenlehre)
# Illustration of different joins
# Vidushi Bigler-Maillart
# 9.10.2017
# http://stat545.com/bit001_dplyr-cheatsheet.html
# https://cran.r-project.org/web/packages/dplyr/vignettes/two-table.html
#*************************************************

# install the packages 
#install.packages("dplyr")
#install.packages("readr")
# load the packages
library(dplyr)
library(readr)

#****************************************
# generate the two tables superheroes and publishers
superheroes <- "name,     alignment, gender,  publisher
                Magneto,  bad,       male,    Marvel
                Storm,    good,      female,  Marvel
                Mystique, bad,       female,  Marvel
                Batman,   good,      male,    DC
                Joker,    bad,       male,    DC
                Catwoman, bad,       female,  DC
                Hellboy,  good,      male,    Dark Horse Comics"

superheroes <- data.frame(read_csv(superheroes, col_names = TRUE, 
                                   trim_ws = TRUE, skip = 0))

publishers <-   "publisher, yr_founded
                DC,        1934
                Marvel,    1939
                Image,     1992"

publishers <- data.frame(read_csv(publishers, col_names = TRUE, 
                                  trim_ws = TRUE, skip = 0))
#****************************************

# Perform the following actions 
# Note down your observations in the form of Venn diagramms
# How many rows survive the respective xyz_join?
# How many from each table?

# ***** I *****
left_join(x=superheroes, y = publishers)
left_join(x=publishers, y = superheroes)

right_join(x=superheroes, y = publishers)
right_join(x=publishers, y = superheroes)

# ***** II *****
full_join(x=superheroes, y = publishers)
full_join(x=publishers, y = superheroes)

# ***** III *****
anti_join(x=superheroes, y = publishers)
anti_join(x=publishers, y = superheroes)

# ***** IV *****
inner_join(x=superheroes, y = publishers)
inner_join(x=publishers, y = superheroes)

#****************************************

# Take a closer look at full_join with two tables

# And at a full join with three tables
# Can you make a prediction about how many rows will survive the full_join?
# Can you derive a formula?

comic <- "name,   comicbook
          Mystique, X-Men
          Batman,   Batman
          Joker,    Batman
          Astérix,  Astérix"

comic <- data.frame(read_csv(comic, col_names = TRUE, 
                                   trim_ws = TRUE, skip = 0))


