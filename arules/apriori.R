library(Matrix)
library(arules)
a<-matrix(0,9,5,dimnames=list(c("T100","T200","T300","T400","T500","T600","T700","T800","T900"),c("I1","I2","I3","I4","I5")))
a[1,]<-c(1,1,0,0,1)
a[2,]<-c(0,1,0,1,0)
a[3,]<-c(0,1,1,0,0)
a[4,]<-c(1,1,0,1,0)
a[5,]<-c(1,0,1,0,0)
a[6,]<-c(0,1,1,0,0)
a[7,]<-c(1,0,1,0,0)
a[8,]<-c(1,1,1,0,1)
a[9,]<-c(1,1,1,0,0)

a.class<-as(a,"transactions")
rules<-apriori(a.class,parameter=list(supp=0.2,conf=0.7,target="rules"))
if(!is.na((((rules@lhs)@data)@i[1]))){
  write(rules,file="arules/apriori_rules.txt",sep = "|",col.names=NA) 
}