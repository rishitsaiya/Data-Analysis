#Claim is Average distance is > 80
#H_0 is Average Distance is <= 80
#H_a is Average Distance is > 80

mydata = read.csv(file.choose(), header = T)
mydata  #Check whether data has been imported or not

distance = mydata$Distance #Storing it in distance array
distance
mean_distance = mean(distance) #Mean of the sample
mean_distance

#Since the sample size is less than 30, we go for T-stats
std_err <- function(x) sd(x)/sqrt(length(x))
std_err(distance)

#Finding t
t = (mean_distance - 80)/std_err(distance)
t

t.test(distance, mu=80, alt = "greater", conf = 0.95)
#This test is one sided 95% confident, 
#so for d.f. 24 at 95%, we find t value

t_table_inbuilt = qt(1-0.05,24)
t_table_inbuilt
t_table = 1.711

#If t < t_table => H_0 is true
#Else H_a is true => Claim is true
#Hence, Average Distance > 80.

#-------------------------------------------------------

myweight = read.csv(file.choose(), header = T)
myweight[myweight==""]<-NA
myweight<-na.omit(myweight)
myweight

#Claim is Group 1 has higher weight compared to Group 2
#H_0 is G1.avg - G2.avg <= 0
#H_a is G1.avg - G2.avg > 0

group_1 <- subset(myweight, Group==1)
g1_weight = group_1$Weight
group_1
g1_weight

group_2 <- subset(myweight, Group==2)
g2_weight = group_2$Weight
group_2
g2_weight

g1_weight_mean = mean(g1_weight)
g1_weight_mean
g1_weight_sd = sd(g1_weight)
g1_weight_sd
g1_length = length(g1_weight)
g1_length
g1_std_err = std_err(g1_weight)
g1_std_err

g2_weight_mean = mean(g2_weight)
g2_weight_mean
g2_weight_sd = sd(g2_weight)
g2_weight_sd
g2_length = length(g2_weight)
g2_length
g2_std_err = std_err(g2_weight)
g2_std_err

#Assuming diff is zero, we find critical value w.r.t. G1
square <- function(x){
  squared <- x*x
  return(squared)
}

s_pooled_nr = (g1_length-1)*(square(g1_weight_sd))+(g2_length-1)*(square(g2_weight_sd))
s_pooled = sqrt((s_pooled_nr)/(g1_length+g2_length-2))
s_pooled

s_pooled_combined = s_pooled * sqrt((1/(g1_length))+(1/(g2_length)))
s_pooled_combined

t_T = ((g1_weight_mean-g2_weight_mean)-(0))/s_pooled_combined

#Calculating the z value
combined_std_err = sqrt(square(g1_std_err)+square(g2_std_err))
z_diff = ((g1_weight_mean-g2_weight_mean)-(0))/s_pooled_combined
z_diff

critical_value = 1.96 #Two sided 95% test

#Since z_diff < critical_value => not enough evidence to reject null hypothesis
# => Claim, H_a is rejected
#Group 1 weight is not higher compared to Group 2

#Estimating Group 1 weight
g1_weight_estimated = (1.96 * (s_pooled_combined)) + g2_weight_mean
g1_weight_estimated

#Z value in alternate curve
z_alternate = (g1_weight_mean-g1_weight_estimated)/g1_std_err
z_alternate

#Type 2 error using the alternate z value
beta = pnorm(-abs(z_alternate))
beta

#Power calculation
power_test = 1-beta
power_test
