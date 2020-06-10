library(ggmap)
library(ggplot2)
library(dplyr)
library(rjson)
library(jsonlite)
library(RCurl)

full_url = "https://my.callofduty.com/api/papi-client/stats/cod/v1/title/mw/platform/ps4/gamer/bearownage/profile/type/mp"

full_url <- URLencode(full_url)

full_url

pop_proj_data_df <- fromJSON(getURL(full_url))

head(pop_proj_data_df, n = 2)

str(pop_proj_data_df)

#TODO Change this!
ggplot(pop_proj_data_df, aes(x = year, y = femalepopulation,
                             group = factor(age), color = age)) + geom_line() +
  labs(x = "Year",
       y = "Female Population - Age 20-40",
       title = "Projected Female Population",
       subtitle = "Boulder, CO: 1990 - 2040")
