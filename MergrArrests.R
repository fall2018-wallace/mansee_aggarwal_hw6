
arrests<-USArrests

df_final<-merge(x=census,y=arrests,by.x="stateName",by.y="row.names")
str(df_final)


library(ggplot2)

plot1<-ggplot(df_final,aes(x=population)) +
  geom_histogram(color="black",fill="red",bin=20)
  
plot2<-ggplot(df_final,aes(x=Murder)) +
  geom_histogram(color="black",fill="red",bin=20)
  
plot3<-ggplot(df_final,aes(x=Assault)) +
  geom_histogram(color="black",fill="red",bin=20)
  
plot4<-ggplot(df_final,aes(x=UrbanPop)) +
  geom_histogram(color="black",fill="red",bin=20)
  
plot5<-ggplot(df_final,aes(x=Rape)) +
  geom_histogram(color="black",fill="red",bin=20)

plot6<-ggplot(df_final,aes(y=population)) +
       geom_boxplot()

plot7<-ggplot(df_final,aes(y=Murder,x="")) +
       geom_boxplot()
       
no_of_murders<- df_final$population*df_final$Murder/100000

no_of_murders
       
       
