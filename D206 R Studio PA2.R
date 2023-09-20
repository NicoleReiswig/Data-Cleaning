#checking working directory
getwd()
#data profiling
str("~/MSDA/churn_raw_data.csv")
str("C:/Users/ntrei/OneDrive/Documents/MSDA/churn_raw_data.csv")
#detect duplicates
duplicated("C:/Users/ntrei/OneDrive/Documents/MSDA/churn_raw_data.csv")
#sum of duplicated rows
sum(duplicated("C:/Users/ntrei/OneDrive/Documents/MSDA/churn_raw_data.csv"))
#detect missing values
colSums(is.na(churn_raw_data))
#visualize missing data
library(visdat)
vis_miss(churn_raw_data)
#histogram of columns with missing data
hist(churn_raw_data$Children)
hist(churn_raw_data$Age)
hist(churn_raw_data$Income)
hist(churn_raw_data$Bandwidth_GB_Year)
hist(churn_raw_data$Tenure)
#View data
churn_raw_data
#detect outliers
b <- boxplot(churn_raw_data$CaseOrder)
b <- boxplot(churn_raw_data$Zip)
b <- boxplot(churn_raw_data$Lat)
#count and range of Lat
lat_query <- churn_raw_data[which(churn_raw_data$Lat < 25), ]
str(lat_query)
lat_query2 <- churn_raw_data[which(churn_raw_data$Lat > 50), ]
str(lat_query2)
#detect outliers
b <- boxplot(churn_raw_data$Lng)
#count and range of Lng
lng_query <- churn_raw_data[which(churn_raw_data$Lng < -120), ]
str(lng_query)
#detect outliers
b <- boxplot(churn_raw_data$Population)
#count and range of Population
pop_query <- churn_raw_data[which(churn_raw_data$Population > 2e+04), ]
str(pop_query)
#detect outliers
b <- boxplot(churn_raw_data$Children)  
#count and range of Children
children_query <- churn_raw_data[which(churn_raw_data$Children > 7), ]
str(children_query)
#detect outliers
b <- boxplot(churn_raw_data$Age)
b <- boxplot(churn_raw_data$Income)
#count and range of Income
income_query <- churn_raw_data[which(churn_raw_data$Income > 100000), ]
str(income_query)
#detect outliers
b <- boxplot(churn_raw_data$Outage_sec_perweek)
#count and range of outage_sec_week
osw_query <- churn_raw_data[which(churn_raw_data$Outage_sec_perweek > 20), ]
str(osw_query)
osw2_query <- churn_raw_data[which(churn_raw_data$Outage_sec_perweek < 0), ]
str(osw2_query)
#detect outliers
b <- boxplot(churn_raw_data$Email)
#count and range of email
email_query <- churn_raw_data[which(churn_raw_data$Email > 20), ]
str(email_query)
email2_query <- churn_raw_data[which(churn_raw_data$Email < 4), ]
str(email2_query)
#detect outliers
b <- boxplot(churn_raw_data$Contacts)  
#count and range of contacts
contacts_query <- churn_raw_data[which(churn_raw_data$Contacts > 5), ]
str(contacts_query)
#detect outliers
b <- boxplot(churn_raw_data$Yearly_equip_failure)
#count and range of yearly_equip_failures
yef_query <- churn_raw_data[which(churn_raw_data$Yearly_equip_failure > 2), ]
str(yef_query)
#detect outliers
b <- boxplot(churn_raw_data$Tenure)
b <- boxplot(churn_raw_data$MonthlyCharge)
#count and range of monthly charge
mc_query <- churn_raw_data[which(churn_raw_data$MonthlyCharge > 300), ]
str(mc_query)
#detect outliers
b <- boxplot(churn_raw_data$Bandwidth_GB_Year)
b <- boxplot(churn_raw_data$item1)
#count and range of item1
item1_query <- churn_raw_data[which(churn_raw_data$item1 > 5), ]
str(item1_query)
item1.1_query <- churn_raw_data[which(churn_raw_data$item1 < 2), ]
str(item1.1_query)
#detect outliers
b <- boxplot(churn_raw_data$item2)
#count and range of item2
item2_query <- churn_raw_data[which(churn_raw_data$item2 > 5), ]
str(item1_query)
item2.1_query <- churn_raw_data[which(churn_raw_data$item2 < 2), ]
str(item2.1_query)
#detect outliers
b <- boxplot(churn_raw_data$item3)
#count and range of item3
item3_query <- churn_raw_data[which(churn_raw_data$item3 > 5), ]
str(item3_query)
item3.1_query <- churn_raw_data[which(churn_raw_data$item3 < 2), ]
str(item3.1_query)
#detect outliers
b <- boxplot(churn_raw_data$item4)
#count and range of item4
item4_query <- churn_raw_data[which(churn_raw_data$item4 > 5), ]
str(item4_query)
item4.1_query <- churn_raw_data[which(churn_raw_data$item4 < 2), ]
str(item4.1_query)
#detect outliers
b <- boxplot(churn_raw_data$item5)
#count and range of item5
item5_query <- churn_raw_data[which(churn_raw_data$item5 > 5), ]
str(item5_query)
item5.1_query <- churn_raw_data[which(churn_raw_data$item5 < 2), ]
str(item5.1_query)
#detect outliers
b <- boxplot(churn_raw_data$item6)
#count and range of item6
item6_query <- churn_raw_data[which(churn_raw_data$item6 > 5), ]
str(item6_query)
item6.1_query <- churn_raw_data[which(churn_raw_data$item6 < 2), ]
str(item6.1_query)
#detect outliers
b <- boxplot(churn_raw_data$item7)
#count and range of item7
item7_query <- churn_raw_data[which(churn_raw_data$item7 > 5), ]
str(item7_query)
item7.1_query <- churn_raw_data[which(churn_raw_data$item7 < 2), ]
str(item7.1_query)
#detect outliers
b <- boxplot(churn_raw_data$item8)
#count and range of item8
item8_query <- churn_raw_data[which(churn_raw_data$item8 > 5), ]
str(item8_query)
item8.1_query <- churn_raw_data[which(churn_raw_data$item8 < 2), ]
str(item8.1_query)
#Retain Lat, Lng outliers expected
#Retain population to preserve sample size 
#Impute outliers in income
churn_raw_data$Income[churn_raw_data$Income > 100000] <- NA
colSums(is.na(churn_raw_data))
churn_raw_data$income[is.na(churn_raw_data$Income)] <- median(churn_raw_data$income,na.rm =TRUE)
colSums(is.na(churn_raw_data))
#Impute outliers in outage_sec_perweek < 0
churn_raw_data$Outage_sec_perweek[churn_raw_data$Outage_sec_perweek < 0] <- NA
colSums(is.na(churn_raw_data))
churn_raw_data$Outage_sec_perweek[is.na(churn_raw_data$Outage_sec_perweek)]<-median(churn_raw_data$Outage_sec_perweek,na.rm =TRUE)
colSums(is.na(churn_raw_data))
#Exclude outliers in outage_sec_perweek > 20
Outliers_outage_sec_perweek<-churn_raw_data[which(churn_raw_data$Outage_sec_perweek > 20),]
str(Outliers_outage_sec_perweek)
churn_raw_data<-churn_raw_data[!(churn_raw_data$Outage_sec_perweek>20),]
str(churn_raw_data)
#Exclude contacts > 5
Outliers_contacts<-churn_raw_data[which(churn_raw_data$Contacts > 5),]
str(Outliers_contacts)
churn_raw_data<-churn_raw_data[!(churn_raw_data$Contacts > 5),]
str(churn_raw_data)
#Impute yearly_equip_failures
churn_raw_data$Yearly_equip_failure[churn_raw_data$Yearly_equip_failure > 2] <- NA
colSums(is.na(churn_raw_data))
churn_raw_data$Yearly_equip_failure[is.na(churn_raw_data$Yearly_equip_failure)]<-median(churn_raw_data$Yearly_equip_failure,na.rm =TRUE)
colSums(is.na(churn_raw_data))
#Exclude monthly charge > 300
Outliers_monthlycharge<-churn_raw_data[which(churn_raw_data$MonthlyCharge > 300),]
str(Outliers_monthlycharge)
churn_raw_data<-churn_raw_data[!(churn_raw_data$MonthlyCharge > 300),]
str(churn_raw_data)
#histogram of columns with outliers
hist(churn_raw_data$item1)
hist(churn_raw_data$item2)
hist(churn_raw_data$item3)
hist(churn_raw_data$item4)
hist(churn_raw_data$item5)
hist(churn_raw_data$item6)
hist(churn_raw_data$item7)
hist(churn_raw_data$item8)
#Impute item 1 using mean due to normal distribution
churn_raw_data$item1[churn_raw_data$item1 > 5] <- NA
colSums(is.na(churn_raw_data))
churn_raw_data$item1[is.na(churn_raw_data$item1)]<-mean(churn_raw_data$item1,na.rm =TRUE)
colSums(is.na(churn_raw_data))
churn_raw_data$item1[churn_raw_data$item1 < 2] <- NA
colSums(is.na(churn_raw_data))
churn_raw_data$item1[is.na(churn_raw_data$item1)]<-mean(churn_raw_data$item1,na.rm =TRUE)
colSums(is.na(churn_raw_data))
#Impute item 2 using mean due to normal distribution
churn_raw_data$item2[churn_raw_data$item2 > 5] <- NA
colSums(is.na(churn_raw_data))
churn_raw_data$item2[is.na(churn_raw_data$item2)]<-mean(churn_raw_data$item2,na.rm =TRUE)
colSums(is.na(churn_raw_data))
churn_raw_data$item2[churn_raw_data$item2 < 2] <- NA
colSums(is.na(churn_raw_data))
churn_raw_data$item2[is.na(churn_raw_data$item2)]<-mean(churn_raw_data$item2,na.rm =TRUE)
colSums(is.na(churn_raw_data))
#Impute item 3 using mean due to normal distribution
churn_raw_data$item3[churn_raw_data$item3 > 5] <- NA
colSums(is.na(churn_raw_data))
churn_raw_data$item3[is.na(churn_raw_data$item3)]<-mean(churn_raw_data$item3,na.rm =TRUE)
colSums(is.na(churn_raw_data))
churn_raw_data$item3[churn_raw_data$item3 < 2] <- NA
colSums(is.na(churn_raw_data))
churn_raw_data$item3[is.na(churn_raw_data$item3)]<-mean(churn_raw_data$item3,na.rm =TRUE)
colSums(is.na(churn_raw_data))
#Impute item 4 using mean due to normal distribution
churn_raw_data$item4[churn_raw_data$item4 > 5] <- NA
colSums(is.na(churn_raw_data))
churn_raw_data$item4[is.na(churn_raw_data$item4)]<-mean(churn_raw_data$item4,na.rm =TRUE)
colSums(is.na(churn_raw_data))
churn_raw_data$item4[churn_raw_data$item4 < 2] <- NA
colSums(is.na(churn_raw_data))
churn_raw_data$item4[is.na(churn_raw_data$item4)]<-mean(churn_raw_data$item4,na.rm =TRUE)
colSums(is.na(churn_raw_data))
#Impute item 5 using mean due to normal distribution
churn_raw_data$item5[churn_raw_data$item5 > 5] <- NA
colSums(is.na(churn_raw_data))
churn_raw_data$item5[is.na(churn_raw_data$item5)]<-mean(churn_raw_data$item5,na.rm =TRUE)
colSums(is.na(churn_raw_data))
churn_raw_data$item5[churn_raw_data$item5 < 2] <- NA
colSums(is.na(churn_raw_data))
churn_raw_data$item5[is.na(churn_raw_data$item5)]<-mean(churn_raw_data$item5,na.rm =TRUE)
colSums(is.na(churn_raw_data))
#Impute item 6 using mean due to normal distribution
churn_raw_data$item6[churn_raw_data$item6 > 5] <- NA
colSums(is.na(churn_raw_data))
churn_raw_data$item6[is.na(churn_raw_data$item6)]<-mean(churn_raw_data$item6,na.rm =TRUE)
colSums(is.na(churn_raw_data))
churn_raw_data$item6[churn_raw_data$item6 < 2] <- NA
colSums(is.na(churn_raw_data))
churn_raw_data$item6[is.na(churn_raw_data$item6)]<-mean(churn_raw_data$item6,na.rm =TRUE)
colSums(is.na(churn_raw_data))
#Impute item 7 using mean due to normal distribution
churn_raw_data$item7[churn_raw_data$item7 > 5] <- NA
colSums(is.na(churn_raw_data))
churn_raw_data$item7[is.na(churn_raw_data$item7)]<-mean(churn_raw_data$item7,na.rm =TRUE)
colSums(is.na(churn_raw_data))
churn_raw_data$item7[churn_raw_data$item7 < 2] <- NA
colSums(is.na(churn_raw_data))
churn_raw_data$item7[is.na(churn_raw_data$item7)]<-mean(churn_raw_data$item7,na.rm =TRUE)
colSums(is.na(churn_raw_data))
#Impute item 8 using mean due to normal distribution
churn_raw_data$item8[churn_raw_data$item8 > 5] <- NA
colSums(is.na(churn_raw_data))
churn_raw_data$item8[is.na(churn_raw_data$item8)]<-mean(churn_raw_data$item8,na.rm =TRUE)
colSums(is.na(churn_raw_data))
churn_raw_data$item8[churn_raw_data$item8 < 2] <- NA
colSums(is.na(churn_raw_data))
churn_raw_data$item8[is.na(churn_raw_data$item8)]<-mean(churn_raw_data$item8,na.rm =TRUE)
colSums(is.na(churn_raw_data))
#Find number of NAs in a single column
sum(is.na(churn_raw_data$Children))
#Find rows that have NA
which(is.na(churn_raw_data$Children))
#Find how many NAs are in each column
colSums(is.na(churn_raw_data))
#histogram for missing data 
hist(churn_raw_data$Children) 
hist(churn_raw_data$Age) 
hist(churn_raw_data$Income) 
hist(churn_raw_data$Tenure) 
hist(churn_raw_data$Bandwidth_GB_Year) 
#impute age with mean
churn_raw_data$Age[is.na(churn_raw_data$Age)] <- mean(churn_raw_data$Age,na.rm = TRUE) 
colSums(is.na(churn_raw_data)) 
#impute income with mean
churn_raw_data$Income[is.na(churn_raw_data$Income)] <- mean(churn_raw_data$Income,na.rm = TRUE) 
colSums(is.na(churn_raw_data)) 
#impute children with median
churn_raw_data$Children[is.na(churn_raw_data$Children)] <- median(churn_raw_data$Children,na.rm = TRUE) 
colSums(is.na(churn_raw_data)) 
#impute tenure with median
churn_raw_data$Tenure[is.na(churn_raw_data$Tenure)] <- median(churn_raw_data$Tenure,na.rm = TRUE) 
colSums(is.na(churn_raw_data)) 
#impute bandwidth with median
churn_raw_data$Bandwidth_GB_Year[is.na(churn_raw_data$Bandwidth_GB_Year)] <- median(churn_raw_data$Bandwidth_GB_Year,na.rm = TRUE) 
colSums(is.na(churn_raw_data)) 
#impute phone with mode
churn_raw_data$Phone[is.na(churn_raw_data$Phone)] <- (names(which.max(table(churn_raw_data$Phone)))) 
colSums(is.na(churn_raw_data)) 
#impute techie with mode
churn_raw_data$Techie[is.na(churn_raw_data$Techie)] <- (names(which.max(table(churn_raw_data$Techie)))) 
colSums(is.na(churn_raw_data)) 
#impute tech support with mode
churn_raw_data$TechSupport[is.na(churn_raw_data$TechSupport)] <- (names(which.max(table(churn_raw_data$TechSupport)))) 
colSums(is.na(churn_raw_data)) 
#visualize missing data 

library(visdat) 

vis_miss(churn_raw_data) 

#detect outliers
b <- boxplot(churn_raw_data$Population) 
b <- boxplot(churn_raw_data$Children)
b <- boxplot(churn_raw_data$Income)
#histogram for outliers 
hist(churn_raw_data$Population) 
hist(churn_raw_data$Children) 
hist(churn_raw_data$Income) 
#impute income with mean
churn_raw_data$Income[churn_raw_data$Income > 100000] <- NA
colSums(is.na(churn_raw_data)) 
churn_raw_data$Income[is.na(churn_raw_data$Income)] <- mean(churn_raw_data$Income,na.rm = TRUE) 
colSums(is.na(churn_raw_data)) 
#round age to integer
churn_raw_data$Age <- round(churn_raw_data$Age)
#round item 1-8 to integer
churn_raw_data$item1 <- round(churn_raw_data$item1)
churn_raw_data$item2 <- round(churn_raw_data$item2)
churn_raw_data$item3 <- round(churn_raw_data$item3)
churn_raw_data$item4 <- round(churn_raw_data$item4)
churn_raw_data$item5 <- round(churn_raw_data$item5)
churn_raw_data$item6 <- round(churn_raw_data$item6)
churn_raw_data$item7 <- round(churn_raw_data$item7)
churn_raw_data$item8 <- round(churn_raw_data$item8)
#retain zip to preserve sample size 
#re-expression of categorical variables not necessary due to consistent yes/no 
#detect duplicates
duplicated("C:/Users/ntrei/OneDrive/Documents/MSDA/churn_raw_data.csv")
#sum of duplicated rows
sum(duplicated("C:/Users/ntrei/OneDrive/Documents/MSDA/churn_raw_data.csv"))
#export cleaned data to csv
write.csv(churn_raw_data, "C:/Users/ntrei/OneDrive/Documents/MSDA/cleaned.csv")
#export excluded data
write.csv(Outliers_outage_sec_perweek, "C:/Users/ntrei/OneDrive/Documents/MSDA/excluded_outage.csv") 
write.csv(Outliers_contacts, "C:/Users/ntrei/OneDrive/Documents/MSDA/excluded_contacts.csv") 
write.csv(Outliers_monthlycharge, "C:/Users/ntrei/OneDrive/Documents/MSDA/excluded_charge.csv") 


#install library for PCA factoextra
install.packages("factoextra")
library("factoextra")

#import cleaned.csv for pca

#new df for PCA
pca206<-select(cleaned, outage_sec_perweek,tenure, monthlycharge, bandwidth_gb_year)
pca206<-prcomp(cleaned[,c("Outage_sec_perweek","Tenure","MonthlyCharge","Bandwidth_GB_Year")],center = TRUE, scale. = TRUE)
#PCA loadings
pca206$rotation
#Selecting PCs
fviz_eig(pca206,choice = "eigenvalue",addlabels = TRUE)

#annotated and executable upload
system("C:/Users/ntrei/OneDrive/Documents/MSDA/executable_code.r")

