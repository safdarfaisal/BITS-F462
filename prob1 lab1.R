c <- matrix(1:9, nrow = 3, ncol = 3)

for(i in 1:3) {
  print(i) 
  if(sum(c[i,]) == sum(c[,i])){
    print("Yes")
  }
  else{
    print("No")
  }
}