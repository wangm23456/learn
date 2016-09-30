library(ggplot2)
library(plotly)
data1=read.csv(file="~/桌面/output/data1.csv",header = TRUE,stringsAsFactors = FALSE)
nc=ncol(data1)
nr=nrow(data1)

rname=(colnames(data1))
for (i in 2:length(rname)) 
{
  data1=data1[!(data1[,i]=="gamma"|data1[,i]=="e-"|is.na(data1[,i])|is.null(data1[,i])),]
}

plot_ly(x=data1$energy,type="histogram",histnorm="probability",bins=100)