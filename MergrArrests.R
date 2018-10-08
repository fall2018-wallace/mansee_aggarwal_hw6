
arrests<-USArrests

df_final<-merge(x=dfStates,y=arrests,by.x="stateName",by.y="row.names")
str(final_df)


