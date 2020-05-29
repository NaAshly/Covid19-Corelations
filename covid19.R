df_covid <- read.csv("Covid19.csv", header = TRUE)
str(df_covid)

head(df_covid)



library(ggplot2)


#Which region had most deaths?
ggplot(aes(x = continentExp), data = df_covid,color = deaths)+
  geom_bar(aes(fill = factor(deaths)))

# chisquare death vs temp
table(df_covid$Temp,df_covid$deaths)
chisq.test(table(df_covid$Temp,df_covid$deaths))
#pvalue is greater than 0.05 , so the temperature and death are independent.

# chisquare cases vs temp
table(df_covid$Temp,df_covid$cases)
chisq.test(table(df_covid$Temp,df_covid$cases))
#pvalue is greater than 0.05 , so the temperature and Cases are independent. 

