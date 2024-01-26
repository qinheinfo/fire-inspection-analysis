#### Preamble ####
# Purpose: Tests... [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(tidyverse)
library(ggplot2)
# [...UPDATE THIS...]

#### Test data ####
cleaned_data <- read_csv("outputs/data/analysis_data.csv")
cleaned_data

address_data <-
  cleaned_data |>
  group_by(ADDRESS_NAME) |>
  summarise(n=n()) |>
  arrange(-n)
address_data

opendate_data <-
  cleaned_data |>
  group_by(INSPECTIONS_OPENDATE) |>
  summarise(n=n()) |>
  arrange(-n)
opendate_data

description_data <-
  cleaned_data |>
  group_by(VIOLATION_DESCRIPTION) |>
  summarise(n=n()) |>
  arrange(-n)
description_data

head(address_data,10)
ggplot(data=head(address_data,10), aes(x=ADDRESS_NAME, y=n)) +
  geom_bar(stat="identity")

head(opendate_data,10)
ggplot(head(opendate_data,10), aes(x=factor(INSPECTIONS_OPENDATE), y=n)) +
  geom_bar(stat="identity")

head(description_data,4)
ggplot(data=head(description_data,4), aes(x=VIOLATION_DESCRIPTION, y=n)) +
  geom_bar(stat="identity")

