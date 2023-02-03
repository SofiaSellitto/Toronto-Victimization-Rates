data <- read.csv( "~/Inputs/Tutorial 1/Scripts/raw_data.csv")

## checking for all possible categories of crime included in the data set 

unique(data$Subtype)


## checking for all possible genders included in the data set 

unique(data$Sex)

## making names easier to type  

cleaned_data <-
  clean_names(data)

head(cleaned_data)



## Checking for missing data in year column, if a number is given back, we know no dates are missing  

mean(cleaned_data$reported_year)


## Cross-tabulating to understand the pattern of unknown data

xtabs(~sex+age_cohort, data=cleaned_data)


## Changing "count" column from a character to numeric so it can be summed

cleaned_data_dropped <- cleaned_data 


cleaned_data_dropped$count = as.numeric(as.character(cleaned_data_dropped$count))

head(cleaned_data_dropped)

## Dropping 'U' (unknown) from the sex variable
cleaned_data_dropped <- cleaned_data_dropped[!(cleaned_data_dropped$sex=='U'),]

## Selecting only the variables of interest 

cleaned_data_dropped <- cleaned_data_dropped |> 
  select(
    reported_year,
    subtype,
    sex,
    count
    
  )




write.csv(cleaned_data_dropped, "~/Inputs/Tutorial 1/Input/cleaned_data.csv", row.names=FALSE)


