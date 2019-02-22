
# Comparing full-time vs. part-time workers 

regdata<- read.csv('clean_data_regression.csv')

fit<- lm(regdata$Average.Hourly.Wage~ regdata$Work.Level.Code + factor(regdata$Job.Characteristic.Text))
reg_summary<-summary(fit)

print(reg_summary)


# Comparing wage difference in area

fit_area<- lm(regdata$Average.Hourly.Wage~ regdata$Work.Level.Code + factor(regdata$Area.Level))
area_summary<- summary(fit_area)
print(area_summary) 
