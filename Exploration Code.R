library(Matching)
# STEP 1. DATA SIMULATING/WRANGLING

# set.seed(123) # to ensure reproductability: 
# age <- rnorm(3, mean = 20, sd = 2) 
# age<- round(age, 0) #creating covariate age
# tr <-  c(0,1, 1) #creating binary treat var
# data <- cbind(age, tr)
# head(data)

age <- c(2, 17, 20, 22, 25, 27)
tr <- c(0,0,1,0, 1, 0)
data <- cbind(age, tr)
#M=1 matching
genout_m1<- GenMatch(X = age, Tr = tr, M=1)

matchout_m1 <- Match(X = age, Tr = tr, M=1, Weight.matrix=genout_m1)
matchout_m1$index.control
matchout_m1$index.treated

mb.out_m1 <- MatchBalance(tr~age, match.out = matchout_m1, data = data)
mb.out_m1$BMsmallest.p.value
mb.out_m1$AMsmallest.p.value

#M=2 matching
genout_m2<- GenMatch(X = age, Tr = tr, M=2)

matchout_m2 <- Match(X = age, Tr = tr, M=2, Weight.matrix=genout_m2)
matchout_m2$index.control
matchout_m2$index.treated

mb.out_m2 <- MatchBalance(tr~age, match.out = matchout_m2, data = data)
mb.out_m2$BMsmallest.p.value
mb.out_m2$AMsmallest.p.value


