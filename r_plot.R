library(ggplot2)
library(plotly)
data1=read.csv(file="~/文档/data/data1_py.csv",header = TRUE,stringsAsFactors = FALSE)
nc=ncol(data1)
nr=nrow(data1)


rname=(colnames(data1))
for (i in 2:length(rname)) 
  {
  data1=data1[!(data1[,i]=="gamma"|data1[,i]=="e-"|is.na(data1[,i])|is.null(data1[,i])),]
  }

#p=ggplot(data1,aes(x=px,y=py,z=pz))
#data2=subset(data1,name="e-")
#p+scatter
plot_ly(x=data1$energy,type="histogram",histnorm="probability",bins=100)
#data2=data1[sample(1:nrow(data1),500),]
#plot_ly(x=data2$px,y=data2$py,z=data2$pz,type="scatter3d",text=paste("Name=",data2$name),mode ="markers")