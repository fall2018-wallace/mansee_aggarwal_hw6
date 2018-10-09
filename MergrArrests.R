
arrests<-USArrests

df_final<-merge(x=census,y=arrests,by.x="stateName",by.y="row.names")
str(df_final)

library(ggplot2)

plot1<-ggplot(df_final,aes(x=population)) +
  geom_histogram(color="black",fill="red",bin=30)
  
plot2<-ggplot(df_final,aes(x=Murder)) +
  geom_histogram(color="black",fill="red",bin=30)


