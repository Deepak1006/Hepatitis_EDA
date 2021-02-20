data<- read.csv(file.choose(""))
data[data==""]<- NA
library(mice)

impute <- mice(data,m=10,method="pmm",maxit = 10)
data_1 <- complete(impute,3)
write.csv(data_1,"imputed.csv")
