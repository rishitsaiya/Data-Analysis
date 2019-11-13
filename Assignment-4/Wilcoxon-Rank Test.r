mydata = read.csv(file.choose(), header = T)
mydata

distance = mydata$Distance #Storing it in distance array
distance

hist(distance,
     main = "Test for Wilcoxon",
     col = "Yellow",
     border = "Red",
     breaks = 20)

diff_distance = c(distance-80)
diff_distance

grp_ng = c()
grp_ps = c()
for(i in 1:length(diff_distance)){
  if(diff_distance[i] < 0){
    grp_ng = c(diff_distance[i])
  }
  else{
    grp_ps = c(diff_distance[i])
  }
}
grp_ng
grp_ps
