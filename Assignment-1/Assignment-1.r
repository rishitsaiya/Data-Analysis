#To genearte 10,00,000 random number in the range of 0 to 100

#1]
x1=sample(1:100 , 1000000, replace=T)

#a)
mean_x1=mean(x1)
median_x1=median(x1)
formode = function(x1) {
  uniqv = unique(x1)
  uniqv[which.max((tabulate(match(x1, uniqv))))]
}
mode_x1=formode(x1)

#To genearte 10,000 random number in the range of 0 to 100

#b)
randomly_y1=sample(1:1000000 , 10000, replace = T)
y1=x1[randomly_y1]

mean_y1=mean(y1)
median_y1=median(y1)
formode = function(y1) {
  uniqv = unique(y1)
  uniqv[which.max((tabulate(match(y1, uniqv))))]
}
mode_y1=formode(y1)

#c)
t=seq(1,50000,5)
  z1=x1[t]
mean_z1=mean(z1)
median_z1=median(z1)
formode = function(z1) {
  uniqv = unique(z1)
  uniqv[which.max((tabulate(match(z1, uniqv))))]
}
mode_z1=formode(z1)

#Comments: 
#Mean more or less remained the same. But we find that mean in B is more than that of C
#Median more or less remained the same. But we find that median in B was more than that of C
#Since the numbers were randomly generated the mode was also random. Respective modes are shown below.

#d)
p=seq(1,1000000,1)
plot(x=p,y=x1[p])
