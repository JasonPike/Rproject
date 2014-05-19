#1. 在算法的第一次迭代，每个项都是候选1-项集的集合C1 的成员。算法简单地扫描所有的事务，
#   对每个项的出现次数计数。
support<-2;#支持度设为2
data<-read.csv("Apriori/data.csv",sep = ",",row.names=1, fill = TRUE,header=FALSE,col.names = paste0("V", 1:5));
rows=length(data[,1]);
cols=length(data[1,]);
c1<-matrix(0,nrow=0,ncol=2);

for(i in 1:rows){
  for(j in 1:cols){
    browser() 
    tmp<-data[i,j];
     index<-which(c1[,1]==tmp[[1]]);
     if(length(index)==0){
       t1<-cbind(as.character(tmp[[1]]),'1');
       c1<-rbind(c1,t1);
     }else{
       tmp2<-as.numeric(c1[index,2])+1;
       c1[index,2]<-tmp2;
     }
  }
}
#122
