#1.
for ( i in 1:12){
  print(3*i+2)
}
#2.
for ( i in c(4,9,16,25,36)){
  print(i*i)
}

#3.
for( i in c(10,25,7,18,42,5)){
  min=i
  if(i<=min){
    min=i
  }
  print(min)
}
#4.

for( i in 1:50){
  if(i%%4==0 & i%%8!=0){
    print(i)
  }
}
#5.
for(i in 1:50){
  print(i*i*i)
}
#6.
fact<-function(a){
  f=1
  for( i in 1:a){
    f=f*i
  }
  print(f)
}
fact(6)
#7.
sum=0
for( i in 1:50){
  sum=sum+i
}
print(sum)
#8.
max=0

for( i in c(14,27,35,9,42,18)){
  max=i
  if(i>max){
    max=i
  }

}
print(max)
#####################################################################

#1.
i=0
while(i<11){
  print(i)
  i=i+1
}
#2.
for( i in  0:20){
  if(!(i%%2)){
    print(i)
  }
}
#3.
for( i in 0:floor(sqrt(150)){
  min=0
  if(i*i>150){
    min=i
    break
  }
  print(min)
}

#4.
sum=0
for( i in 1:10){
  sum=sum+i
}
print(sum)
#5.
sum=3
while(sum<50){
  sum=sum+4
}
print(sum)

#6.
i=0
while(i*i*i<300){
  i=i+1
}
print(i)
#7.
sumdigit <- function(a) {
  a <- abs(a)                
  if (a == 0) return(0)       
  sum <- 0
  while (a > 0) {
    sum <- sum + (a %% 10)
    a <- floor(a / 10)
  }
  return(sum)                 
}
print(sumdigit(8642))
###########################################################################
#1.
i=0
repeat{
  print(i)
  i=i+1
  if(i>8){
    break
  }
}
i=1
repeat{
  print(i*i)
  i=i+1
  if(i>50){
    break
  }
}
i=0
repeat{
  i=i+1
  if(i>40){
    break
  }
}
i=1
repeat{
  print(3*i-1)
  i=i+1
  if(i>50){
    break
  }
}
i=2
sum=0
repeat{
  
  if(sum>150){
    break
  }
  print(sum)
  sum=sum+i
  i=i+2
}
i=1
sum=0
repeat{
  if(sum>5){
    break
  }
  print(sum)
  sum=sum+(1/i)
  i=i+1
}
n=1
repeat{
  list<-c()
  for( i in 0:n){
    print((choose(n,i)*2^i))
  }
  if(n>3){
    break
  }
  n=n+1
}

