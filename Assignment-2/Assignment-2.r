#PLOTS

#p=c(0.1,0.2,0.3,0.4,0.4,0.1,0.1,0.4,0.3,0.4,0.3,0.6,0.7,0.8,0.9,0.2,0.4,0.3,0.4)
p=c(4,6,8,10,12,14,16,20,2,4,2,6,8,40,10,12,16,12,18,8,12,20,10,8,6,4)


#1]
#Boxplot
boxplot(p,main="Boxplot")

#2]
#For the Regular Histogram
hist(p,
     main="Histogram",
     col="Yellow",
     border="Red",
     xlim = c(0,20),
     ylim=c(0,10))

#For the Density Histogram
hist(p,
     main="Histogram",
     col="Yellow",
     border="Red",
     xlim = c(0,20),
     ylim=c(0,0.1),
     freq = F)
        
     #Write in console        
     install.packages("plyr")
     library("plyr")
     freq_table <- count(p)
     rf=freq_table$freq/sum(freq_table$freq)
     #round(freq_table$rf, digits = 2)
     freq_table$rf = rf
     freq_table

#3]#Scatter Plot

#a)    
     x1=sample(1:10 , 10, replace=T)
     y1=sample(1:10 , 10, replace=T)
     
     plot(x=x1,y=y1,main="Random Value Scatter Plot")

#b)
     current=c(1,2,3,4,5,6,7,8,9,10)
     voltage=c(2,4,6,8,10,12,14,16,18,20)
     plot(x=current,y=voltage,main="Linear Relation Scatter Plot")

#c) 
     current=c(2,3,4,5,6,7,8,9,10)
     voltage=c(4,6,8,10,24,14,16,18,30)
     plot(x=current,y=voltage,main="Linear Relation having Outliers Scatter Plot")