# read recession data, scrap from wiki
url <- "https://en.wikipedia.org/wiki/List_of_recessions_in_the_United_States"

recession_dates <- url %>%
  read_html() %>%
  html_table() %>%
  .[[3]] %>%
  janitor::clean_names()
