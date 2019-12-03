#distrbutions
set.seed(123) # to ensure reproductability: 
age <- rnorm(100, mean = 20, sd = 3) 
age<- round(age, 0) #creating covariate age
tr <-   rbinom(100, 1, 0.5) #creating binary treat var
data <- cbind(age, tr)
head(data)
attach(data)
library(Matching)
#M=1 matching
genout_m1<- GenMatch(X = age, Tr = tr, M=1)

matchout_m1 <- Match(X = age, Tr = tr, M=1, Weight.matrix=genout_m1)
matchout_m1$index.control
matchout_m1$index.treated
summary(matchout_m1)

mb.out_m1 <- MatchBalance(tr~age, match.out = matchout_m1, data = data)
mb.out_m1$BMsmallest.p.value
mb.out_m1$AMsmallest.p.value

#M=2 matching
genout_m2<- GenMatch(X = age, Tr = tr, M=6)

matchout_m2 <- Match(X = age, Tr = tr, M=6, Weight.matrix=genout_m2)
matchout_m2$index.control
matchout_m2$index.treated

mb.out_m2 <- MatchBalance(tr~age, match.out = matchout_m2, data = data)
mb.out_m2$BMsmallest.p.value
mb.out_m2$AMsmallest.p.value
