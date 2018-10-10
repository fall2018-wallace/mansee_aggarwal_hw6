
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
       
df_final$murder_state<- (df_final$Murder/100000)*df_final$population

df_final

plot8<-ggplot(df_final,aes(x=stateName,y=murder_state)) +
       geom_col()
       
       
plot9<-ggplot(df_final,aes(x=stateName,y=murder_state)) +
       geom_col() + theme(axis.text.x=element_text(angle=90,hjust=1))+
       ggtitle("Total Murders")
       
plot10<-ggplot(df_final,aes(x=reorder(stateName,murder_state),y=murder_state)) +
       geom_col() + theme(axis.text.x=element_text(angle=90,hjust=1))+
       ggtitle("Total Murders")
       
plot11<-ggplot(df_final,aes(x=reorder(stateName,murder_state),y=murder_state,fill=percentOver18)) +
       geom_col() + theme(axis.text.x=element_text(angle=90,hjust=1))+
       ggtitle("Total Murders")
       
plot12<-ggplot(df_final,aes=(x=population,y=percentOver18))
        geom_point(aes(size=murder_state,color=murder_state))

       
