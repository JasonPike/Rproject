pages<-read.csv("people.csv",header=FALSE);
#构造邻接矩阵(方阵):
mrow<-max(pages)
A<-matrix(0,nrow=mrow,ncol=mrow);
#cols=length(pages[1,]);
rows=length(pages[,1]);

for(i in 1:rows){
  browser()
  
  p1<-pages[i,1];
  p2<-pages[i,2];
  A[p2,p1]<-1;
}