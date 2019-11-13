x <- c(rbinom(100, 1, 0.5))
x
mean_x = mean(x)
mean_x
actual = 0.5*0+0.5*1
actual

mean_arr =c()
for(i in 1:2000){
  x <- c(rbinom(100, 1, 0.5))
  x
  mean_x = mean(x)
  print(mean_x)
  mean_arr[i]=c(mean_x)
}

mean_arr
mean(mean_arr)

hist(mean_arr,
     main = "Central Limit Theorem",
     col = "Yellow",
     border = "Red",
     breaks = 20)