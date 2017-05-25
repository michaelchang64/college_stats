library(ggplot2)

current.dir <- getwd()
setwd(current.dir)

# Fall Semester Year
years <- c(2004:2016)
axes_vars <- c("School", "Fall Semester Year", "Number of Applicants", "Number of Acceptances", "Regular Acceptance Rate", "Number of Enrolled Students", "Rate of Enrollment")
vars <- c("Fall Semester Year", 
          "Number of Applicants",
          "Number of Acceptances", 
          "Regular Acceptance Rate", 
          "Number of Enrolled Students", 
          "Rate of Enrollment")