#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)
#install.packages("gitcreds")
library(gitcreds)
# [...UPDATE THIS...]

#### Download data ####
# [...ADD CODE HERE TO DOWNLOAD...]
the_raw_data <- 
  list_package_resources("https://open.toronto.ca/dataset/highrise-residential-fire-inspection-results/") %>%
  filter(name == "Highrise Inspections Data.csv" ) %>%
  get_resource()
the_raw_data 


#### Save data ####
# [...UPDATE THIS...]
# change the_raw_data to whatever name you assigned when you downloaded it.
write_csv(the_raw_data, "inputs/data/raw_data.csv") 
