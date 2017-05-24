# Fall Semester Year
years <- c(seq(2004, 2016, 1))

# Brown University Admissions Data
brown.applicants <- c(15286, 16911, 18316, 19097, 20633, 24988, 30135, 30944, 28742, 28919, 30431, 30396, 32390)
brown.accepted <- c(2534, 2557, 2531, 2669, 2828, 2790, 2815, 2757, 2759, 2654, 2661, 2875, 3014)
brown.reg.accept.rt <- c(16.57726024, 15.12033588, 13.81851933, 13.97601718, 13.70619881, 11.16535937, 9.341297495, 8.909643226, 9.599192819, 9.177357447, 8.744372515, 9.458481379, 9.305341155)
brown.wait <- c(450, 987, 450, 450, 450, 500, 600, NULL, NULL, NULL, NULL, NULL, NULL)
brown.wait.accept <- c(89, 99, 35, 73, 68, 82, 32, 0, 0, 0, 57, 192, 82)
brown.wait.accept.rt <- c(19.77777778, 10.03039514, 7.777777778, 16.22222222, 15.11111111, 16.4, 5.333333333, NULL, NULL, NULL, NULL, NULL, NULL)
brown.enrolled <- c(1458, 1439, 1469, 1484, 1550, 1494, 1501, 1507, 1539, 1543, 1615, 1561, 1681)
brown.enrolled.rt <- c(55.58520778, 54.17921687, 57.24863601, 54.1210795, 53.52209945, 52.01949861, 52.72216368, 54.66086326, 55.7810801, 58.13865863, 57.43193525, 52.65731986, 54.29586563)
brown.data <- data.frame("Fall Semester Year" = years,
                         "Number of Applicants" = brown.applicants,
                         "Number of Accepted Applicants" = brown.accepted,
                         "Regular Acceptance Rate" = brown.reg.accept.rt,
                         "Number of Enrolled Students" = brown.enrolled,
                         "Rate of Enrollment" = brown.enrolled.rt)

# Yale University Admissions Data
