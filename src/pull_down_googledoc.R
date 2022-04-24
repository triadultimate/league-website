# pull down teams from google drive
# Sun Apr 24 13:26:37 2022 ------------------------------

# library(googlesheets)
library(googlesheets4)
# library(googledrive)


positions_sheet_loc <- "https://docs.google.com/spreadsheets/d/1cmSX8XzZN1av2B1ENZ0C6-iNs1z3etEUsGEBYEyq03s/edit#gid=1635023463"


springTeams <- read_sheet(positions_sheet_loc, sheet = "Teams")

springClean <-
  springTeams %>% 
  dplyr::select(Team, `Team Name`, Gender, Name)

save(springClean, file= here::here("data","springClean.rda"))


