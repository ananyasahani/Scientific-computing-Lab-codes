a <- 10
b <- 20

x <- c(1,2,3,4)

print(a<b)
print(a>=b)
print(a<b)
print(a<=b)
print(a==b)
print(a!=b)
print(!a)
print(c |b)
print(a & b)
print(c>6)

x <- 8

print(x>5 | x>20)

grade=function(x){
  ifelse(x>=80,"a",ifelse(x>=60,"b",ifelse(x>=40,"c","f")))
}
print(grade(80))

x <- 1:10
print()

x <- c(12,NA,25,18,NA,30,10,NA)
print(mean(x,NA))
print(x)
print(which(is.na(x)))
print(sum(is.na(x)))
na.omit(x)
x[is.na(x)] <- mean(x,na.rm=TRUE)
x[is.na(x)] <- 0
print(x)



v<- c(5,12,18,3,25,8,15)

print(which(v>10))

print(which(v<10))

print(v[v>=10 & v<=2])

print(which(x>10))

print(which(v%%2==0))


z <- c(2,6,9,12,15,18,21,25)
print(sum(z[z>15]>15))
print(z[z>10 & z%%3==0])
print(z[z<10 | z%%5])
print(z[z%%2!=0])

n <- c(1:100)

f=function(x){ifelse(x%%2==0,x^2,x^3)}

f(n)























