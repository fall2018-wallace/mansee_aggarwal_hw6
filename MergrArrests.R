
arrests<-USArrests

df_final<-merge(x=census,y=arrests,by.x="stateName",by.y="row.names")
str(df_final)


