# pull down teams from google drive
# Sun Apr 24 13:26:37 2022 ------------------------------

# library(googlesheets)
library(googlesheets4)
# library(googledrive)


positions_sheet_loc <- "https://docs.google.com/spreadsheets/d/1l7UcmZx4ryeAQOa_T5fV0kyU7LzuXEtqKPlIRe2aC0g/edit#gid=1912751209"


Teams <- read_sheet(positions_sheet_loc, sheet = "Drafted")

Summer22Clean <-
  Teams %>% 
  dplyr::select(Team, `Team Name`, Role, Gender, Name = `Your Name`)

save(Summer22Clean, file= here::here("data","Summer22Clean.rda"))


