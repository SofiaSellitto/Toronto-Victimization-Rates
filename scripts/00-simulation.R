## Simulating ##

## Creating variables and their possible values/categories

years <- sample(x = 2014:2021,size = 4,replace = TRUE)

crimes <- c("Assault", "Robbery", "Sexual Violence", "Other")
    
sexs <-  c("M", "F", "F", "M")
    
number_victims <- sample(x = 1:1700,size = 4,replace = TRUE)

## Making data frame out of my simulated columns 

df_s = data.frame(
 Year = years,
 Crimes = crimes,
 Sex = sexs,
 Victims = number_victims
)

## Testing ##

### Checking that values are whole numbers for both "Year" and "Number of Victims"

any(df_s$number_victim%%1!=0)

any(df_s$years%%1!=0)


### Checking for type of number of unique types

unique(crimes, incomparables = FALSE)

unique(sexs, incomparables = FALSE)



