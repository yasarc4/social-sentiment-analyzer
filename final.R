install.packages("Rfacebook")  # from CRAN
rm(list = ls(all=T))
library(devtools)
library(Rfacebook)
install_github("Rfacebook", "pablobarbera", subdir = "Rfacebook")  # from GitHub
setwd("/home/yasar/prasad data/")
#load("Auth")
#save(Auth,file = "Auth") 
#token <- "**********"
#me <- getUsers("me", token=token)
Auth<-fbOAuth(app_id='**********',app_secret='*********************',extended_permissions=TRUE,legacy_permissions= FALSE)
me <- getUsers("me", token = Auth, private_info = TRUE)


#me$name

# for Page details

page <- getPage("WorldNewsTonight", token  = Auth , n = 4000)