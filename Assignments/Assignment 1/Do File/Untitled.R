# ECON 673 Assignment 1

# Q1
makeTeam <- function(data, team)
  {
  team <- match.arg(team, unique(data[,"Home"]))
  which <- data[,"Home"] == team | data[,"Away"] == team
  obj <- data[which,]
  chk <- obj[,"Period"] %in% c(1:4,"OT","SO")
  obj <- obj[chk,]
  obj[obj[,"Period"]=="4","Period"] <- "OT"
  class(obj) <- "team"
  attr(obj, "team") <- team
  obj
}

Boston <- makeTeam(res, "BOSTON BRUINS")
Washington <- makeTeam(res, "WASHINGTON CAPITALS")

print.team <- function(teamname, print=TRUE){
  games.played <- length(unique(teamname[,1]))
  years.played <- length(as.numeric(unique(strtrim(teamname[,1],4))))
  game.year <- as.numeric(unique(strtrim(teamname[,1],4)))-1
  team_name <- attr(teamname, "team")
  if (print)
    cat("   Goal Data for: ", team_name, ,
        "****************************************", 
        "\n",
        " Games Played: ", games.played, 
        " Seasons: ", game.year[1], "-", game.year[2], "to",
        game.year[years.played], "-", game.year[years.played]+1
        )
}

