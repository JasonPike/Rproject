#1. 在算法的第一次迭代，每个项都是候选1-项集的集合C1 的成员。算法简单地扫描所有的事务，
#   对每个项的出现次数计数。
data<-read.csv("Apriori/data.csv",sep = ",", fill = TRUE,header=FALSE);
data<-read.table("Apriori/data.csv",header=FALSE);
mode(data)
data