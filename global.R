# Gets directory path name for global.R
current.dir <- getwd()

# Sets directory to that stored in current.dir object
setwd(current.dir)

# Labels for columns in college.data data.frame
college.data.names <- c("School", "Fall Semester Year", "Number of Applicants", "Number of Acceptances", "Regular Acceptance Rate", "Number of Enrolled Students", "Rate of Enrollment")

# Names of data options
vars <- c("Fall Semester Year", 
          "Number of Applicants",
          "Number of Acceptances", 
          "Regular Acceptance Rate", 
          "Number of Enrolled Students", 
          "Rate of Enrollment")

# Imports college.data.csv into college.data data.frame based on separations by commas.
# header argument TRUE names columns with first row values.
college.data <- read.table("data/college.data.csv", header = T, sep = ",")

# Names columns using axes_vars
names(college.data) <- college.data.names