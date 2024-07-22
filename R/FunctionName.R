average_weight <- function(survey_data, sex){
 data<-  
    survey_data %>%
    filter(sex != '')  %>%
    group_by(sex) %>%
    summarize(mean_weight = mean(weight, na.rm = TRUE))
  
  
 
 if(sex == 'male')
 {
   return(as.double(data[2,2]))
 }
 if(sex == 'female')
 {
   as.double(data[1,2])
 }

}