## Simulating how I wish to display my data 

years <- sample(x = 2014:2021,size = 4,replace = TRUE)

crimes <- c("Assault", "Robbery", "Sexual Violence", "Other")
    
sexs <-  c("M", "F", "F", "M")
    
number_victims <- sample(x = 1:1700,size = 4,replace = TRUE)

df_s = data.frame(
 Year = years,
 Crimes = crimes,
 Sex = sexs,
 Victims = number_victims
)

#Test 

max(df_s$number_victims)
min(df_s$number_victims)

any(df_s$number_victim%%1!=0)

max(df_s$years)
min(df_s$years)

any(df_s$years%%1!=0)


