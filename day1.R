set.seed(100)
 trainingRowindex<-sample(1:nrow(cars),0.8*nrow(cars))
 trainingData<-cars[trainingRowindex,]
 testData<-cars[-trainingRowindex,]
 testData
 lmMod<-lm(as.numeric(Displacement)~as.numeric(Weight),data=trainingData)
 distPred<-predict(lmMod,testData)
 summary(lmMod)

 lmMod$residuals
 attach(cars)
 plot(Displacement~Horsepower,type = "l")
 plot(as.numeric(Displacement)~as.numeric(Horsepower),type = "l")
 
 
 
 
 trainingRowindex1<-sample(1:nrow(cars),0.7*nrow(cars))
 trainingData1<-cars[trainingRowindex1,]
 testData1<-cars[-trainingRowindex1,]
 testData1
 lmMod1<-lm(as.numeric(Displacement)~as.numeric(Weight),data=trainingData1)
 distPred1<-predict(lmMod1,testData1)
 summary(lmMod1)
 
 
 
 
 
 plot(datafile$Irrigation.potential.created...Rabi~datafile$Total...Irrigation.potential.created,type="l")
 
 
 
 set.seed(100)
 trainingRowindex<-sample(1:nrow(datafile),0.8*nrow(datafile))
 trainingData<-datafile[trainingRowindex,]
 testData<-datafile[-trainingRowindex,]
 testData
 lmMod<-lm(as.numeric(datafile$Total...Irrigation.potential.created)~as.numeric(datafile$Irrigation.potential.created...Rabi),data=trainingData)
 distPred<-predict(lmMod,testData)
 summary(lmMod)
 
 lmMod$residuals
 attach(datafile)
 plot(as.numeric(datafile$Total...Irrigation.potential.created)~as.numeric(datafile$Irrigation.potential.created...Rabi),type = "p")
 abline(lmMod,col="blue")
 
 
 
 plot(as.numeric(factbook$Birth.rate.births.1000.population.)~as.numeric(factbook$Electricity...consumption.kWh.))
 set.seed(100)
 trainingRowindex<-sample(1:nrow(factbook),0.8*nrow(factbook))
 trainingData<-factbook[trainingRowindex,]
 testData<-factbook[-trainingRowindex,]
 testData
 lmMod<-lm(as.numeric(factbook$Birth.rate.births.1000.population.)~as.numeric(factbook$Electricity...consumption.kWh.))
 distPred<-predict(lmMod,testData)
 summary(lmMod)
 
 lmMod$residuals
 attach(factbook)
 plot(as.numeric(factbook$Birth.rate.births.1000.population.)~as.numeric(factbook$Electricity...consumption.kWh.),type = "p")
 abline(lmMod,col="blue")
 
 
 factbook[factbook = ""] <- NA
 