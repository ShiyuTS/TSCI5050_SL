#' Source the project-wide settings
source("config_public.R");
#' Load the libraries you'll need: rio for universal file import and synthpop
#' for simulations, dplyr for convenience.
library(rio); library(synthpop); library(dplyr); library(lubridate);

back2date <- function(xx,yy=do.call(runif,c(length(xx),as.list(range(diff(as.numeric(xx))))))){
  cumsum(c(do.call(runif,c(1,as.list(range(xx)))),diff(as.numeric(yy)))) %>% 
    as_datetime() %>% sort
}

customsim0 <- function(data){
  
  out <- data[,-5]
  out$...4 <- diff(data$...4) %>% as.numeric() %>% c(0,.)
  
  out <- syn(out,visit.sequence=c(3,4))$syn
  out$...3 <- out$...3 %>% as.character()
  out$...4 <- back2date(data$...4, out$...4 )
  out
 }

dat0a <- import_list("c:/Users/shiyu/OneDrive - UT Health San Antonio/Orange Grove Diabetes Study/Data/TalentLMS Report/Usage Analysis/logins.xlsx");
dat0b <- sapply(dat0a[8:19], customsim0, simplify = FALSE)
export(dat0b, "Data/logins.xlsx")
