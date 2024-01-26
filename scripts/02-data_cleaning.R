#### Preamble ####
# Purpose: Cleans the raw plane data recorded by two observers..... [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 6 April 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]

#### Workspace setup ####
library(tidyverse)

#### Clean data ####
raw_data <- read_csv("inputs/data/raw_data.csv")
#rename(raw_data,PropertyType="PropertyType property")
raw_data
distinct(raw_data,VIOLATION_DESCRIPTION)
raw_data |>
  group_by(VIOLATION_DESCRIPTION)|>
  summarise(n=n())
raw_data

cleaned_data <- 
  select(raw_data, ADDRESS_NAME, INSPECTIONS_OPENDATE, VIOLATIONS_ITEM_NUMBER, VIOLATION_DESCRIPTION) %>%
  arrange(INSPECTIONS_OPENDATE)

c_data <-
  cleaned_data |>
  filter(VIOLATIONS_ITEM_NUMBER > 0) |>
  arrange(-VIOLATIONS_ITEM_NUMBER)


#### Save data ####
write_csv(c_data, "outputs/data/analysis_data.csv")



print(c_data)