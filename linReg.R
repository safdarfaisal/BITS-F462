n = 15

x = seq(0,2,length = n)
y = sin(2*pi*x)



noise = y + rnorm(n, sd = 0.3)

data = data.frame(x, noise)

plot(x,noise, pch = 19)


lm1 <- lm(y~poly(x,1))
lm2 <- lm(y~poly(x,2))
lm3 <- lm(y~poly(x,3))
lm4 <- lm(y~poly(x,4))
lm5 <- lm(y~poly(x,5))
lm6 <- lm(y~poly(x,6))
lm7 <- lm(y~poly(x,7))
lm8 <- lm(y~poly(x,8))
lm9 <- lm(y~poly(x,9))
lms = list(lm1,lm2,lm3,lm4,lm5,lm6,lm7,lm8,lm9)
train = test = vector(length = 9)

for(i in 1:9){
  train[i] = var(lms[i][[1]]$residuals)
}

newy = sin(2*pi*x) + rnorm(n,sd = .3)

for(i in 1:9){
  test[i] = 1/10*sum((newy - predict(lms[i][[1]], newdata = data.frame(x)))^2)
}

plot(1:10, seq(0,1,length = 10))
lines(1:9, train, ylim = c(0,0.5), col = 'black', lwd = 3)
lines(1:9, test, pch = "X", col = "red", lwd = 3)
cbind(train,test)

