#排序
c1<-c1[order(c1[,1]),]
#剪枝
c1rows<-length(c1[,1]);
for(i in 1:c1rows){
  
  tmp3<-c[i,2];
  if(c1[i,2]<3)c1[-i,]
}