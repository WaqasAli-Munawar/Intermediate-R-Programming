library(readr)
library(dplyr)

scores <-  read.csv("scores.csv")
scores_five <- scores[1:5,]
home_team_won <- c("home team won","home team won","home team did not win","home team won","home team won")
scores_five <- scores_five %>% mutate(home_team_won = home_team_won)
if (scores$home_goals[3] > scores$away_goals[3]) {
  print("Home team won")
} else {
  print("home team did not win")
}
