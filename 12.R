tsImport < - ts(import_battery [,2],start = 2017,frequency = 12)
plot(tsImport)
install.packages("imputeTS")
tsImportPoln <- na_mean(tsImport, option = 'mean', maxgap = Inf)
tsImportPoln2 <- na_seasplit(tsImport, algorithm = 'interpolation', find_frequency = FALSE, maxgap = Inf)
plot(tsImportPoln2)
> library("forecast", lib.loc="C:/LIB")
Registered S3 method overwritten by 'quantmod':
  method            from
as.zoo.data.frame zoo 
> fit < - stl(tsImportPoln2, s.window = "periodic")
Error: object 'fit' not found
> fit < - stl (tsImportPoln2, s.window = "periodic")
Error: object 'fit' not found
> fit <- stl(tsImportPoln2, s.window = "periodic")
Error in stl(tsImportPoln2, s.window = "periodic") : 
  только одномерные серии разрешены
> plot(tsImportPoln2)
> ts1 <- ts(as.vector(tsImportPoln2))
> fit <- stl(ts1, s.window = "periodic")
Error in stl(ts1, s.window = "periodic") : 
  серия не периодическая или имеет менее чем два периода
> stlData <- stl(ts1,t.window = 13, s.window = 12)
Error in stl(ts1, t.window = 13, s.window = 12) : 
  серия не периодическая или имеет менее чем два периода