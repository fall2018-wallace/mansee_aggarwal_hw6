
#creating a function to clean the dataset
readStates<-function(states){
#removing first row
states<-states[-1,]
#counting number of rows
num.row<-nrow(states)
states<-states[-num.row,]
states<-states[,-1:-4]

colnames(states)<-c("stateName","population","popOver18","percentOver18")
return(states)
}

cleanCensus<-readStates(raw_data)
str(cleanCensus)
