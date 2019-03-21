#Original Code
tukey_multiple <- function(x) { 
  outliers <- array(TRUE,dim=dim(x)) 
  for (j in 1:ncol(x)) 
  { 
    outliers[,j] <- outliers[,j] && tukey.outlier(x[,j]) 
  } 
  outlier.vec <- vector(length=nrow(x)) 
  for (i in 1:nrow(x)) 
  { outlier.vec[i] <- all(outliers[i,]) } return(outlier.vec) }


###################################################
#Error fixed
tukey_multiple <- function(x) {
  outliers <- array(TRUE,dim=dim(x))
  for (j in 1:ncol(x))
    
    {outliers[,j] <- outliers[,j] && tukey.outlier(x[,j])}
  
  outlier.vec <- vector(length=nrow(x))
  
  for (i in 1:nrow(x))
  {outlier.vec[i] <- all(outliers[i,])
    return(outlier.vec)}
  }
  
#Test of the corrected code
a <- array(1:24, dim = c(6,4))
tukey_multiple(a) #New error generated <Error in tukey.outlier(x[, j]) : could not find function "tukey.outlier"> 


