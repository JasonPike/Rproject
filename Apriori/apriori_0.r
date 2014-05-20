#我的函数,字符串为否为空
library(stringr)
isEmptyStr<-function(str){
  str<-str_trim(str)
  if(str==""){
    return (TRUE);
  }
  if(length(str)==0){
    return (TRUE);
  }
  if(is.na(str)){
    return (TRUE);
  }else{
    return (FALSE);
  }
}
a<-isEmptyStr("")
#1. 在算法的第一次迭代，每个项都是候选1-项集的集合C1 的成员。算法简单地扫描所有的事务，
#   对每个项的出现次数计数。
support<-2;#支持度设为2
data<-read.csv("Apriori/data.csv",sep = ",",row.names=1, fill = TRUE,header=FALSE,col.names = paste0("V", 1:5));
rows<-length(data[,1]);
cols<-length(data[1,]);
c1<-matrix(0,nrow=0,ncol=2);
for(i in 1:rows){
  for(j in 1:cols){
    
    tmp<-data[i,j];
    tmpstr<-as.character(tmp[[1]]);
    isemp<-isEmptyStr(tmpstr);
    if(isemp)next
    index<-which(c1[,1]==tmpstr);
     if(length(index)==0){
       t1<-cbind(tmpstr,'1');
       c1<-rbind(c1,t1);
     }else{
       tmp2<-as.numeric(c1[index,2])+1;
       c1[index,2]<-tmp2;
     }
  }
}
l1<-c1[order(c1[,1]),]
c1rows<-length(c1[,1]);
for(i in 1:c1rows){
 
  tmp3<-as.numeric(c1[i,2]);
  if(tmp3<support){
    index<-which(l1[,1]==c1[i,1])
    l1<-l1[-index,];
  }
}
  