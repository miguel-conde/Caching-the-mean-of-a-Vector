source("cacheVectorFunctions.R")
v<-makeVector(1:100)
v
v$get()
v$getmean()
v$setmean(5)
v$getmean()
v$setmean(mean(1:100))
v$getmean()

v$set(rnorm(50))
v$get()
v$getmean()
# La primera vez la calcula y la almacena
cachemean(v)
# Las siguientes veces solo la recupera de la cache
cachemean(v)
