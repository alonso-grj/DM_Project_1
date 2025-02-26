library(ggplot2)
library(dplyr)
texas <- read.csv("~/Desktop/Data Mining/DM_Project_1/COVID-19/COVID-19_cases_TX.csv")
mobility <- read.csv("~/Desktop/Data Mining/DM_Project_1/COVID-19/Global_Mobility_Report.csv")
census <- COVID.19_cases_plus_census <- read.csv("~/Desktop/Data Mining/DM_Project_1/COVID-19/COVID-19_cases_plus_census.csv")

#1. How did COVID-19 case numbers evolve over time in Texas?

texas %>%
  group_by(date) %>%
  summarize(Total_Cases = sum(confirmed_cases)) %>%
  ggplot(aes(x = date, y = Total_Cases)) +
  geom_line(color = "blue") +
  labs(title = "COVID-19 Case Trends in Texas", x = "Date", y = "Total Cases")

