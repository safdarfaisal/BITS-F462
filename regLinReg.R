n = 11

x = seq(0,1,length = n)
y = sin(2*pi*x)

noise = y + rnorm(n, sd = 0.3)

lambdas <- 10^seq(3,-2,by = -0.1)
fit <- glmnet(poly(x,2), noise, alpha = 0, lambda = lambdas)
