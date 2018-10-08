
arrests<-USArrests

df_final<-merge(x=census,y=arrests,by.x="stateName",by.y="row.names")
str(df_final)

plot1<-ggplot(df_final,aes(x=population)) +
  geom_histogram(color="black",fill="red",binwidth=10)


