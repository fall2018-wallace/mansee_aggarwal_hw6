
#aasign USArrests dataset to a new dataframe
arrests<-USArrests
#Merge arrests and census dataset
df_final<-merge(x=census,y=arrests,by.x="stateName",by.y="row.names")
str(df_final)

#load ggplot2
library(ggplot2)
#plotting histgram of population with specifying color,fill and binwidth
plot1<-ggplot(df_final,aes(x=population)) +
  geom_histogram(color="black",fill="red",bin=20)
  
#plotting histogram of Murder rate with specifying color,fill and binwidth
plot2<-ggplot(df_final,aes(x=Murder)) +
  geom_histogram(color="black",fill="red",bin=20)
  
#Plotting histogram of Assault with specifying color,fill and binwidth 
plot3<-ggplot(df_final,aes(x=Assault)) +
  geom_histogram(color="black",fill="red",bin=20)
 
#plotting histogram of UrbanPopulation with specifying color,fill and binwidth
plot4<-ggplot(df_final,aes(x=UrbanPop)) +
  geom_histogram(color="black",fill="red",bin=20)
 
#Plotting histogram of Rape with specifying color,fill and binwidth
plot5<-ggplot(df_final,aes(x=Rape)) +
  geom_histogram(color="black",fill="red",bin=20)

#plotting boxplot of population
plot6<-ggplot(df_final,aes(y=population,x=factor(0))) +
       geom_boxplot()

#plotting boxplot of murder rate
plot7<-ggplot(df_final,aes(y=Murder,x="")) +
       geom_boxplot()
       
# I think which visualisatiob imporatant on what type of analysis you want to do.
       
df_final$murder_state<- (df_final$Murder/100000)*df_final$population

df_final

plot8<-ggplot(df_final,aes(x=stateName,y=murder_state)) +
       geom_col()
       
       
plot9<-ggplot(df_final,aes(x=stateName,y=murder_state)) +
       geom_col() + theme(axis.text.x=element_text(angle=90,hjust=1))+
       ggtitle("Total Murders")
       
plot10<-ggplot(df_final,aes(x=reorder(stateName,Murder),y=murder_state)) +
       geom_col() + theme(axis.text.x=element_text(angle=90,hjust=1))+
       ggtitle("Total Murders")
       
plot11<-ggplot(df_final,aes(x=reorder(stateName,Murder),y=murder_state,fill=percentOver18)) +
       geom_col() + theme(axis.text.x=element_text(angle=90,hjust=1))+
       ggtitle("Total Murders")
       
plot12<-ggplot(df_final,aes(x=population,y=percentOver18)) +
        geom_point(aes(size=Murder,color=Murder))

       
